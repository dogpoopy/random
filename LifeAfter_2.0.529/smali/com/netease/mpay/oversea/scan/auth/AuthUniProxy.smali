.class public Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;
.super Lcom/netease/ntunisdk/external/protocol/UniSDKProxy;
.source "AuthUniProxy.java"


# instance fields
.field private isRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/UniSDKProxy;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;->isRunning:Z

    return-void
.end method


# virtual methods
.method public hasAppRunning()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;->isRunning:Z

    return v0
.end method

.method public isSupportShortCut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized setRunning(Z)V
    .locals 0

    monitor-enter p0

    .line 15
    :try_start_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
