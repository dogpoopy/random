.class public Lcom/netease/pharos/network/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStatus"

.field private static sNetworkStatus:Lcom/netease/pharos/network/NetworkStatus;


# instance fields
.field private hasNetworkChanged:Z

.field private lastChangeTime:J

.field private mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

.field private mPreNetwork:Lcom/netease/pharos/network/NetworkType;

.field private mTimer:Ljava/util/Timer;

.field private sIsInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/pharos/network/NetworkStatus;->sIsInit:Z

    .line 24
    iput-boolean v0, p0, Lcom/netease/pharos/network/NetworkStatus;->hasNetworkChanged:Z

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/netease/pharos/network/NetworkStatus;->lastChangeTime:J

    .line 28
    sget-object v0, Lcom/netease/pharos/network/NetworkType;->INIT:Lcom/netease/pharos/network/NetworkType;

    iput-object v0, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    .line 33
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/network/NetworkStatus;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/network/NetworkStatus;
    .locals 2

    .line 37
    sget-object v0, Lcom/netease/pharos/network/NetworkStatus;->sNetworkStatus:Lcom/netease/pharos/network/NetworkStatus;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/netease/pharos/network/NetworkStatus;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/netease/pharos/network/NetworkStatus;->sNetworkStatus:Lcom/netease/pharos/network/NetworkStatus;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/netease/pharos/network/NetworkStatus;

    invoke-direct {v1}, Lcom/netease/pharos/network/NetworkStatus;-><init>()V

    sput-object v1, Lcom/netease/pharos/network/NetworkStatus;->sNetworkStatus:Lcom/netease/pharos/network/NetworkStatus;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/network/NetworkStatus;->sNetworkStatus:Lcom/netease/pharos/network/NetworkStatus;

    return-object v0
.end method

.method private getNetStatus()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v0}, Lcom/netease/pharos/network/NetworkType;->flag()I

    move-result v0

    return v0
.end method

.method private isConnected()Z
    .locals 2

    const-string v0, "getNetworkType"

    .line 138
    invoke-static {v0}, Lcom/netease/pharos/util/Util;->getSystemParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isConnectedMobile()Z
    .locals 2

    const-string v0, "getNetworkType"

    .line 166
    invoke-static {v0}, Lcom/netease/pharos/util/Util;->getSystemParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isConnectedWifi()Z
    .locals 2

    const-string v0, "getNetworkType"

    .line 156
    invoke-static {v0}, Lcom/netease/pharos/util/Util;->getSystemParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized change()V
    .locals 9

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "NetworkStatus"

    const-string v3, "NetworkStatus [change]"

    .line 73
    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/netease/pharos/util/Util;->isNeedReadIp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    invoke-direct {p0}, Lcom/netease/pharos/network/NetworkStatus;->isConnectedWifi()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NetworkStatus"

    const-string v4, "\u8fde\u63a5\u7684\u662fWIFI\u7f51\u7edc"

    .line 77
    invoke-static {v2, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v2, Lcom/netease/pharos/network/NetworkType;->WIFI:Lcom/netease/pharos/network/NetworkType;

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/netease/pharos/network/NetworkStatus;->isConnectedMobile()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NetworkStatus"

    const-string v4, "\u8fde\u63a5\u7684\u662f\u79fb\u52a8\u7f51\u7edc"

    .line 80
    invoke-static {v2, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v2, Lcom/netease/pharos/network/NetworkType;->MOBILE:Lcom/netease/pharos/network/NetworkType;

    goto :goto_0

    :cond_1
    const-string v2, "NetworkStatus"

    const-string v4, "\u65e0\u7f51\u7edc"

    .line 83
    invoke-static {v2, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/netease/pharos/network/NetworkType;->NONE:Lcom/netease/pharos/network/NetworkType;

    .line 87
    :goto_0
    iget-object v4, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    if-ne v2, v4, :cond_2

    sget-object v4, Lcom/netease/pharos/network/NetworkType;->INIT:Lcom/netease/pharos/network/NetworkType;

    iget-object v5, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    if-ne v4, v5, :cond_2

    .line 88
    iput-object v2, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 90
    :cond_2
    :try_start_1
    sget-object v4, Lcom/netease/pharos/network/NetworkType;->INIT:Lcom/netease/pharos/network/NetworkType;

    iget-object v5, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    if-ne v4, v5, :cond_3

    .line 91
    iput-object v2, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    .line 93
    :cond_3
    iput-object v2, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    .line 95
    iget-wide v4, p0, Lcom/netease/pharos/network/NetworkStatus;->lastChangeTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    iget-object v4, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    if-ne v4, v2, :cond_4

    .line 96
    iput-wide v0, p0, Lcom/netease/pharos/network/NetworkStatus;->lastChangeTime:J

    const-string v0, "NetworkStatus"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_switch#has changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/pharos/network/NetworkStatus;->hasNetworkChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",Pre Network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    .line 98
    invoke-virtual {v2}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current Network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v2}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 102
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    if-eq v4, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/netease/pharos/network/NetworkStatus;->hasNetworkChanged:Z

    const-string v2, "NetworkStatus"

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_switch#has changed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/netease/pharos/network/NetworkStatus;->hasNetworkChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",Pre Network:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    .line 104
    invoke-virtual {v4}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",current Network:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v4}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    iget-object v3, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    if-eq v2, v3, :cond_6

    .line 108
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->clean()V

    .line 112
    :cond_6
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 114
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v4, "methodId"

    const-string v5, "pharosOnNetworkChange"

    .line 116
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "project"

    .line 117
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getProject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "udid"

    .line 118
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "network"

    .line 119
    iget-object v5, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v5}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v2, v3}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 121
    invoke-virtual {v2, v3}, Lcom/netease/pharos/PharosListener;->onNetworkChanged(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :catch_0
    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    iput-object v2, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    .line 128
    iput-wide v0, p0, Lcom/netease/pharos/network/NetworkStatus;->lastChangeTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clean()V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network_switch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/pharos/network/NetworkStatus;->hasNetworkChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",pre network:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/network/NetworkStatus;->mPreNetwork:Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v1}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[clean]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStatus"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/netease/pharos/network/NetworkStatus;->hasNetworkChanged:Z

    return-void
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v0}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 2

    const-string v0, "getNetworkType"

    .line 58
    invoke-static {v0}, Lcom/netease/pharos/util/Util;->getSystemParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/pharos/network/NetworkType;->getNetwork(Ljava/lang/String;)Lcom/netease/pharos/network/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---Network Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v1}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStatus"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v0}, Lcom/netease/pharos/network/NetworkType;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/netease/pharos/network/NetworkStatus;->sIsInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/netease/pharos/network/NetworkStatus;->sIsInit:Z

    :cond_0
    return-void
.end method

.method public isNetworkChanged()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/netease/pharos/network/NetworkStatus;->hasNetworkChanged:Z

    return v0
.end method

.method public declared-synchronized setNetwork(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {p1}, Lcom/netease/pharos/network/NetworkType;->getNetwork(Ljava/lang/String;)Lcom/netease/pharos/network/NetworkType;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/network/NetworkStatus;->mCurrentNetwork:Lcom/netease/pharos/network/NetworkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
