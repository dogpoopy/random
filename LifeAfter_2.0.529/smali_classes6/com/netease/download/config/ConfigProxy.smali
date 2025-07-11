.class public Lcom/netease/download/config/ConfigProxy;
.super Ljava/lang/Object;
.source "ConfigProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigProxy"

.field private static sConfigProxy:Lcom/netease/download/config/ConfigProxy;


# instance fields
.field private mConfigParams:Lcom/netease/download/config/ConfigParams;

.field private mContext:Landroid/content/Context;

.field private mHasDownloadConfig:Z

.field private mNeedRefresh:Z

.field private mProjeceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/netease/download/config/ConfigProxy;->mConfigParams:Lcom/netease/download/config/ConfigParams;

    .line 39
    iput-object v0, p0, Lcom/netease/download/config/ConfigProxy;->mProjeceId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/netease/download/config/ConfigProxy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/netease/download/config/ConfigProxy;->mNeedRefresh:Z

    .line 45
    iput-boolean v0, p0, Lcom/netease/download/config/ConfigProxy;->mHasDownloadConfig:Z

    .line 48
    new-instance v0, Lcom/netease/download/config/ConfigParams;

    invoke-direct {v0}, Lcom/netease/download/config/ConfigParams;-><init>()V

    iput-object v0, p0, Lcom/netease/download/config/ConfigProxy;->mConfigParams:Lcom/netease/download/config/ConfigParams;

    return-void
.end method

.method private downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/dns/DnsParams$Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ConfigProxy"

    const-string v1, "ConfigProxy [downloadConfig] start"

    .line 165
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/config/ConfigProxy$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/netease/download/config/ConfigProxy$1;-><init>(Lcom/netease/download/config/ConfigProxy;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getInstances()Lcom/netease/download/config/ConfigProxy;
    .locals 1

    .line 52
    sget-object v0, Lcom/netease/download/config/ConfigProxy;->sConfigProxy:Lcom/netease/download/config/ConfigProxy;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/netease/download/config/ConfigProxy;

    invoke-direct {v0}, Lcom/netease/download/config/ConfigProxy;-><init>()V

    sput-object v0, Lcom/netease/download/config/ConfigProxy;->sConfigProxy:Lcom/netease/download/config/ConfigProxy;

    .line 56
    :cond_0
    sget-object v0, Lcom/netease/download/config/ConfigProxy;->sConfigProxy:Lcom/netease/download/config/ConfigProxy;

    return-object v0
.end method

.method private useLocalFileConfig()I
    .locals 8

    const-string v0, "taiwan"

    const-string v1, "guonei"

    const-string v2, "ConfigProxy"

    const-string v3, "ConfigProxy [useLocalFileConfig] \u91c7\u7528\u672c\u5730\u914d\u7f6e\u4fe1\u606f"

    .line 230
    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->getInstance()Lcom/netease/download/downloader/DownloadProxy;

    sget-object v4, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/download_config.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/download/util/Util;->file2Info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    .line 236
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConfigProxy [useLocalFileConfig] local config info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v3

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConfigProxy [useLocalFileConfig] oversea = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "2"

    .line 248
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "ConfigProxy [useLocalFileConfig] \u53f0\u6e7e"

    .line 249
    invoke-static {v2, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v0, "ConfigProxy [useLocalFileConfig] \u975e\u53f0\u6e7e"

    .line 256
    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v6, :cond_2

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigProxy [useLocalFileConfig] regionConfig = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigProxy [useLocalFileConfig] ProjectId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadInitInfo;->getProjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "<$gameid>"

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadInitInfo;->getProjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConfigProxy [useLocalFileConfig] configInfo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/netease/download/config/ConfigProxy;->mConfigParams:Lcom/netease/download/config/ConfigParams;

    invoke-virtual {v3, v1, v0}, Lcom/netease/download/config/ConfigParams;->parse(Ljava/lang/String;Z)Z

    .line 274
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v1

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConfigProxy [useLocalFileConfig] configParams = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "ConfigProxy [useLocalFileConfig] regionConfig is null"

    .line 279
    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigProxy [useLocalFileConfig] JSONException = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v4
.end method


# virtual methods
.method public getConfig()I
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "ConfigProxy"

    const-string v2, "ConfigProxy [getConfig] start"

    .line 92
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, v0, Lcom/netease/download/config/ConfigProxy;->mProjeceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0xb

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/netease/download/config/ConfigProxy;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 101
    :cond_0
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getConfigurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    const-string v2, "ConfigProxy [getConfig] use param configUrl"

    .line 102
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->getConfigurl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "ConfigProxy [getConfig] use project"

    .line 106
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "https://mbdl.update.netease.com/%s.mbdl"

    .line 108
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "netease.com"

    aput-object v7, v6, v5

    const-string v7, "163.com"

    aput-object v7, v6, v4

    const-string v7, "easebar.com"

    .line 111
    invoke-static {v2, v6, v7}, Lcom/netease/download/util/Util;->replaceDomain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_2
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    .line 116
    :goto_0
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/dns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConfigProxy [getConfig] \u914d\u7f6e\u6587\u4ef6\u505aDNS\u89e3\u6790\uff0cDNS\u7ed3\u679c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ""

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 121
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v18

    const-string v14, "__DOWNLOAD_DNS_RESOLVED__"

    const-string v15, "__DOWNLOAD_DNS_RESOLVED__"

    invoke-virtual/range {v8 .. v18}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_3
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v19

    const/16 v20, 0xb

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v29

    const-string v25, "__DOWNLOAD_DNS_RESOLVED__"

    const-string v26, "__DOWNLOAD_DNS_RESOLVED__"

    invoke-virtual/range {v19 .. v29}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_1
    invoke-static {}, Lcom/netease/download/config/ConfigParams;->getDefaultConfing()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConfigProxy [getConfig] \u9ed8\u8ba4\u914d\u7f6e\u6587\u4ef6\u5185\u5bb9\uff0c\u5199\u5165\u5230\u672c\u5730\u914d\u7f6e\u6587\u4ef6="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->getInstance()Lcom/netease/download/downloader/DownloadProxy;

    sget-object v8, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/download_config.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6, v5}, Lcom/netease/download/util/Util;->info2File(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    new-instance v7, Lcom/netease/download/config/ConfigCore;

    invoke-direct {v7}, Lcom/netease/download/config/ConfigCore;-><init>()V

    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 138
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/download/dns/DnsParams$Unit;

    iget-object v8, v8, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 140
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 141
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConfigProxy [getConfig] dnsIpNodeUnitList"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", ip="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConfigProxy [getConfig] \u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v3, v0, Lcom/netease/download/config/ConfigProxy;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/netease/download/config/ConfigProxy;->mProjeceId:Ljava/lang/String;

    invoke-virtual {v7, v3, v6, v5, v4}, Lcom/netease/download/config/ConfigCore;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    :cond_4
    if-eqz v3, :cond_5

    const-string v4, "ConfigProxy [getConfig] \u5f00\u542f\u65b0\u7ebf\u7a0b\uff0c\u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6"

    .line 152
    invoke-static {v1, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v4, v0, Lcom/netease/download/config/ConfigProxy;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/netease/download/config/ConfigProxy;->mProjeceId:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v2}, Lcom/netease/download/config/ConfigProxy;->downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    if-eqz v3, :cond_6

    const-string v2, "ConfigProxy [getConfig] \u91c7\u7528\u672c\u5730\u914d\u7f6e\u6587\u4ef6"

    .line 157
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/config/ConfigProxy;->useLocalFileConfig()I

    move-result v3

    :cond_6
    :goto_2
    return v3
.end method

.method public getmConfigParams()Lcom/netease/download/config/ConfigParams;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/netease/download/config/ConfigProxy;->mConfigParams:Lcom/netease/download/config/ConfigParams;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p2, p0, Lcom/netease/download/config/ConfigProxy;->mProjeceId:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/netease/download/config/ConfigProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isNeedRefresh()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/netease/download/config/ConfigProxy;->mNeedRefresh:Z

    return v0
.end method

.method public setNeedRefresh(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/netease/download/config/ConfigProxy;->mNeedRefresh:Z

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lcom/netease/download/config/ConfigProxy;->mNeedRefresh:Z

    :cond_1
    return-void
.end method

.method public setmConfigParams(Lcom/netease/download/config/ConfigParams;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/netease/download/config/ConfigProxy;->mConfigParams:Lcom/netease/download/config/ConfigParams;

    return-void
.end method

.method public start()I
    .locals 3

    const-string v0, "ConfigProxy"

    const-string v1, "ConfigProxy [start] start"

    .line 65
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/netease/download/config/ConfigProxy;->mProjeceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/netease/download/config/ConfigProxy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_2

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigProxy [start] mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/download/config/ConfigProxy;->mNeedRefresh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v1, p0, Lcom/netease/download/config/ConfigProxy;->mHasDownloadConfig:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/netease/download/config/ConfigProxy;->mNeedRefresh:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "ConfigProxy [start] \u914d\u7f6e\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728"

    .line 83
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "ConfigProxy [start] \u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6"

    .line 75
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/netease/download/config/ConfigProxy;->getConfig()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/netease/download/config/ConfigProxy;->mHasDownloadConfig:Z

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    const/16 v0, 0xb

    return v0
.end method
