.class public Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;
.super Ljava/lang/Object;
.source "DevicesInfoProxy.java"


# static fields
.field private static sDevicesInfoProxy:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasRun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mHasRun:Z

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;
    .locals 1

    .line 33
    sget-object v0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    invoke-direct {v0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    .line 36
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mHasRun:Z

    .line 93
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->clean()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isHasRun()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mHasRun:Z

    return v0
.end method

.method public start()I
    .locals 8

    const-string v0, ""

    const-string v1, "[pharos] start whoami"

    .line 49
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/netease/pharos/deviceCheck/NetDevices;->getInstances()Lcom/netease/pharos/deviceCheck/NetDevices;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/pharos/deviceCheck/NetDevices;->init(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/netease/pharos/deviceCheck/NetDevices;->getInstances()Lcom/netease/pharos/deviceCheck/NetDevices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceCheck/NetDevices;->start()I

    .line 55
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->isIpv6Verify()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 56
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy$1;-><init>(Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;)V

    invoke-direct {v2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 62
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 65
    :goto_0
    invoke-static {}, Lcom/netease/pharos/deviceCheck/IpInfoCore;->getInstances()Lcom/netease/pharos/deviceCheck/IpInfoCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/deviceCheck/IpInfoCore;->start()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-wide/16 v5, 0xbb8

    .line 68
    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "[pharos] who6 exception"

    .line 70
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "[pharos] who6 interrupt exception"

    .line 74
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_1
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setIpaddrV6(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 81
    iput-boolean v4, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mHasRun:Z

    :cond_2
    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mHasRun:Z

    :cond_3
    const-string v1, "[pharos] finish whoami"

    .line 86
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
