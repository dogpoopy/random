.class public Lcom/netease/pharos/qos/HighSpeedListCoreProxy;
.super Ljava/lang/Object;
.source "HighSpeedListCoreProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighSpeedListCoreProxy"

.field private static sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;


# instance fields
.field private mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

.field private mIsInit:Z

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    .line 25
    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsStart:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;
    .locals 2

    .line 34
    sget-object v0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    invoke-direct {v1}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;-><init>()V

    sput-object v1, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HighSpeedListCoreProxy"

    const-string v1, "HighSpeedListCoreProxy [clean] start"

    .line 74
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCore;->clean()V

    .line 80
    :cond_0
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListInfo;->getInstance()Lcom/netease/pharos/qos/HighSpeedListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListInfo;->clean()V

    .line 81
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->reset()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    .line 85
    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    if-nez v0, :cond_1

    const-string v0, "HighSpeedListCoreProxy"

    const-string v1, "HighSpeedListCoreProxy [init] start"

    .line 47
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/netease/pharos/qos/HighSpeedListCore;

    invoke-direct {v0}, Lcom/netease/pharos/qos/HighSpeedListCore;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    :cond_0
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    goto :goto_0

    :cond_1
    const-string v0, "HighSpeedListCoreProxy"

    const-string v1, "HighSpeedListCoreProxy [init] already init"

    .line 54
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "HighSpeedListCoreProxy"

    const-string v1, "HighSpeedListCoreProxy [start] [harbor\u6a21\u5757] start"

    .line 60
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    .line 63
    invoke-virtual {p0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->init()V

    :cond_0
    const-string v0, "HighSpeedListCoreProxy"

    const-string v1, "HighSpeedListCoreProxy [start] [harbor\u6a21\u5757] \u5f00\u59cb\u83b7\u53d6\u9ad8\u901f\u5217\u8868"

    .line 66
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCore;->start()I

    move-result v0

    const-string v1, "HighSpeedListCoreProxy"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighSpeedListCoreProxy [start] [harbor\u6a21\u5757] \u83b7\u53d6\u9ad8\u901f\u5217\u8868  \u7ed3\u679c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
