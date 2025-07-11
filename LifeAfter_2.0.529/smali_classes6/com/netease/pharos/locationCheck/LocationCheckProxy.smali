.class public Lcom/netease/pharos/locationCheck/LocationCheckProxy;
.super Ljava/lang/Object;
.source "LocationCheckProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationCheckProxy"

.field private static sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasRun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mHasRun:Z

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/locationCheck/LocationCheckProxy;
    .locals 2

    .line 35
    sget-object v0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    invoke-direct {v1}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;-><init>()V

    sput-object v1, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mHasRun:Z

    .line 72
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->clean()V

    return-void
.end method

.method public isHasRun()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mHasRun:Z

    return v0
.end method

.method public start()I
    .locals 5

    const-string v0, "LocationCheckProxy"

    const-string v1, "LocationCheckProxy [start]"

    .line 51
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaCore;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/locationCheck/NetAreaCore;->start()I

    .line 53
    new-instance v1, Lcom/netease/pharos/locationCheck/LocationHunter;

    invoke-direct {v1}, Lcom/netease/pharos/locationCheck/LocationHunter;-><init>()V

    .line 54
    invoke-virtual {v1}, Lcom/netease/pharos/locationCheck/LocationHunter;->start()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1, v2}, Lcom/netease/pharos/locationCheck/LocationHunter;->checkRegion(Lcom/netease/pharos/deviceCheck/DeviceInfo;)Lcom/netease/pharos/deviceCheck/DeviceInfo;

    .line 58
    :cond_0
    invoke-static {}, Lcom/netease/pharos/locationCheck/RecheckResult;->getInstance()Lcom/netease/pharos/locationCheck/RecheckResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/locationCheck/RecheckResult;->chooseBest()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    .line 59
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->handleProbeAndHarborRegion()V

    .line 60
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationCheckProxy [start] call report, info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/netease/pharos/report/ReportProxy;->getInstance()Lcom/netease/pharos/report/ReportProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->getPharosResultInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/pharos/linkcheck/Proxy;->setmPharosResultCache(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mHasRun:Z

    return v2
.end method
