.class public Lcom/netease/download/network/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# static fields
.field public static final STATUS_MOBILE:I = 0x2

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStatus"

.field private static sIsInit:Z

.field private static sNeedRefresh:Z

.field private static sPreValidStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static change(Landroid/content/Context;)V
    .locals 15

    const-string v0, "NetworkStatus"

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnected(Landroid/content/Context;)Z

    move-result v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u662f\u5426\u8fde\u63a5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v3

    const/16 v4, 0xc

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "__DOWNLOAD_NETWORK_LOST__"

    const-string v10, "__DOWNLOAD_NETWORK_LOST__"

    const-string v11, ""

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const-string v12, "0"

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v3 .. v14}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsgWithOtherSatus(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netease/download/downloader/TaskHandle;->setNetworkLost(I)V

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string p0, "\u8fde\u63a5\u7684\u662fWIFI\u7f51\u7edc"

    .line 57
    invoke-static {v0, p0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnectedMobile(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u8fde\u63a5\u7684\u662f\u79fb\u52a8\u7f51\u7edc"

    .line 61
    invoke-static {v0, p0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 65
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sPreValidStatus="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isNowConnected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget v3, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    const-string v3, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5,\u505c\u6b62\u6389\u6240\u6709\u4efb\u52a1"

    .line 68
    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v3

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Lcom/netease/download/network/NetController;->setInterruptedCode(I)V

    .line 70
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 71
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->stopAll()V

    .line 74
    :cond_3
    sget v3, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    const-string v1, "\u6709\u7f51\u7edc\u8fde\u63a5\uff0c\u91cd\u65b0\u542f\u52a8\u6240\u6709\u4efb\u52a1"

    .line 75
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/netease/download/network/NetController;->setInterruptedCode(I)V

    .line 79
    :cond_4
    sget v1, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    if-eqz v1, :cond_5

    if-eq p0, v1, :cond_5

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u72b6\u6001\u53d1\u751f\u4e86\u6539\u53d8\uff0c\u539f\u6765\u662f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u73b0\u5728\u662f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/netease/download/downloader/TaskHandle;->setNetworkSwitch(I)V

    .line 82
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getInstance()Lcom/netease/download/handler/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/handler/Dispatcher;->notifyNetworkChanged()V

    .line 83
    sput-boolean v2, Lcom/netease/download/network/NetworkStatus;->sNeedRefresh:Z

    .line 90
    :cond_5
    sput p0, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkStatus [change] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static getNetStatus()I
    .locals 1

    .line 161
    sget v0, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    return v0
.end method

.method private static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 114
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkStatus [getNetworkInfo]= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NetworkStatus"

    invoke-static {v1, p0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 32
    sget-boolean v0, Lcom/netease/download/network/NetworkStatus;->sIsInit:Z

    if-nez v0, :cond_2

    .line 33
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnectedMobile(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput p0, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    .line 34
    sput-boolean v1, Lcom/netease/download/network/NetworkStatus;->sIsInit:Z

    :cond_2
    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConnectedMobile(Landroid/content/Context;)Z
    .locals 1

    .line 156
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isConnectedWifi(Landroid/content/Context;)Z
    .locals 2

    .line 145
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needRefresh()Z
    .locals 2

    .line 99
    sget-boolean v0, Lcom/netease/download/network/NetworkStatus;->sNeedRefresh:Z

    const/4 v1, 0x0

    .line 100
    sput-boolean v1, Lcom/netease/download/network/NetworkStatus;->sNeedRefresh:Z

    return v0
.end method
