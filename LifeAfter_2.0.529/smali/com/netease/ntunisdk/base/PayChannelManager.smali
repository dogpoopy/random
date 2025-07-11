.class public Lcom/netease/ntunisdk/base/PayChannelManager;
.super Ljava/lang/Object;
.source "PayChannelManager.java"


# instance fields
.field private a:Lcom/netease/ntunisdk/base/SdkBase;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->a:Lcom/netease/ntunisdk/base/SdkBase;

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/PayChannelManager;)V
    .locals 11

    .line 1070
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "UNISDK_JF_GAS3_URL"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "UniSDK PCM"

    if-eqz v1, :cond_0

    const-string p0, "UNISDK_JF_GAS3_URL empty"

    .line 1072
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1075
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    .line 1076
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "get_ff_channel?login_channel=%s&support_ff_channels=%s,allysdk"

    .line 1077
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "/get_ff_channel?login_channel=%s&support_ff_channels=%s,allysdk"

    .line 1079
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1083
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getPayChannelFromJF url = "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v1

    const-string v3, "GET"

    .line 1087
    iput-object v3, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 1088
    iput-object v8, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 1089
    new-instance v3, Lcom/netease/ntunisdk/base/PayChannelManager$2;

    invoke-direct {v3, p0, v0}, Lcom/netease/ntunisdk/base/PayChannelManager$2;-><init>(Lcom/netease/ntunisdk/base/PayChannelManager;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 1120
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    const-string v0, "JF_LOG_KEY"

    invoke-interface {p0, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1121
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1122
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1124
    :try_start_0
    iget-object v7, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    const-string v9, ""

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->addSecureHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hmacSHA256Signature exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_1
    invoke-virtual {v1, p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    const-string p0, "JF_CLIENT_KEY empty"

    .line 1130
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string p0, "PAY"

    .line 1132
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "FF_CHANNEL_BY_GAME"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "allysdk"

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/PayChannelManager;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/PayChannelManager;)Z
    .locals 1

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->c:Z

    return v0
.end method


# virtual methods
.method public allyPayEnabled()Z
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/PayChannelManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->b:Z

    return v0
.end method

.method public initAsync()V
    .locals 2

    const-string v0, "UniSDK PCM"

    const-string v1, "initAsync"

    .line 38
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/base/PayChannelManager$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/PayChannelManager$1;-><init>(Lcom/netease/ntunisdk/base/PayChannelManager;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public payDisabled()Z
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/PayChannelManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager;->c:Z

    return v0
.end method
