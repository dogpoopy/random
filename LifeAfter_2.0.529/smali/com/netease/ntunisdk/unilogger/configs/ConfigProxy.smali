.class public Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;
.super Ljava/lang/Object;
.source "ConfigProxy.java"


# static fields
.field private static configProxy:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;


# instance fields
.field private callBackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

.field private volatile hasInit:Z

.field private localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

.field public localConfigJson:Lorg/json/JSONObject;

.field private preUnitResult:Lorg/json/JSONObject;

.field private remoteConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

.field public remoteConfigJson:Lorg/json/JSONObject;

.field public requestLocalConfigDelay:J

.field public requestRemoteConfigDelay:J

.field tConfigCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->preUnitResult:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->callBackMap:Ljava/util/HashMap;

    .line 24
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    .line 25
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->remoteConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->hasInit:Z

    .line 36
    new-instance v1, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;-><init>(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->tConfigCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    const-wide/16 v1, 0x0

    .line 209
    iput-wide v1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->requestLocalConfigDelay:J

    .line 210
    iput-wide v1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->requestRemoteConfigDelay:J

    .line 211
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfigJson:Lorg/json/JSONObject;

    .line 212
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->remoteConfigJson:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Ljava/util/HashMap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->callBackMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/Config;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->remoteConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;Lcom/netease/ntunisdk/unilogger/configs/Config;)Lcom/netease/ntunisdk/unilogger/configs/Config;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->remoteConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    return-object p1
.end method

.method public static getInstance()Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->configProxy:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-direct {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->configProxy:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    .line 33
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->configProxy:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    return-object v0
.end method

.method private handlePreUnitResult()V
    .locals 2

    .line 72
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/configs/ConfigUtil;->readUnitResultFromFile()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->preUnitResult:Lorg/json/JSONObject;

    .line 73
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/configs/ConfigUtil;->deletePreUnitResultFile()Z

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigProxy [handlePreUnitResult] preUnitResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->preUnitResult:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized readLocalConfig()V
    .locals 4

    monitor-enter p0

    .line 173
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerDirPath:Ljava/lang/String;

    const-string v1, "unilogger_local_config_file"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->file2Str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config [readLocalConfig] read localConfig file, localConfigFileInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/netease/ntunisdk/unilogger/configs/Config;

    invoke-direct {v0}, Lcom/netease/ntunisdk/unilogger/configs/Config;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->tConfigCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/unilogger/configs/Config;->parseConfig(Lorg/json/JSONObject;Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "Config [readLocalConfig] read localConfig file, file content is error"

    .line 187
    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config [readLocalConfig] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestRemoteConfig()V
    .locals 2

    .line 128
    new-instance v0, Lcom/netease/ntunisdk/unilogger/network/ConfigRequest;

    invoke-direct {v0}, Lcom/netease/ntunisdk/unilogger/network/ConfigRequest;-><init>()V

    .line 129
    new-instance v1, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;-><init>(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->registerNetCallback(Lcom/netease/ntunisdk/unilogger/network/NetCallback;)V

    .line 169
    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/network/NetworkProxy;->addToUploadQueue(Lcom/netease/ntunisdk/unilogger/network/BaseRequest;)Z

    return-void
.end method


# virtual methods
.method public containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->remoteConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getCarrierLimit()J
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-eqz v0, :cond_0

    .line 104
    iget-wide v0, v0, Lcom/netease/ntunisdk/unilogger/configs/Config;->carrierLimit:J

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xa00000

    :goto_0
    return-wide v0
.end method

.method public getExpire()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-eqz v0, :cond_0

    .line 95
    iget v0, v0, Lcom/netease/ntunisdk/unilogger/configs/Config;->expire:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    return v0
.end method

.method public getFileLimit()J
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-eqz v0, :cond_0

    .line 113
    iget-wide v0, v0, Lcom/netease/ntunisdk/unilogger/configs/Config;->fileLimit:J

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xa00000

    :goto_0
    return-wide v0
.end method

.method public getPreUnitResult()Lorg/json/JSONObject;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->preUnitResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getUnitResult(Ljava/lang/String;)Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->remoteConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->getUnitResult(Ljava/lang/String;)Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    move-result-object p1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->getUnitResult(Ljava/lang/String;)Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getWifiOnly()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfig:Lcom/netease/ntunisdk/unilogger/configs/Config;

    if-eqz v0, :cond_0

    .line 122
    iget-boolean v0, v0, Lcom/netease/ntunisdk/unilogger/configs/Config;->wifiOnly:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized init(Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;)Z
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->hasInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 60
    iput-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->hasInit:Z

    const-string v0, "ConfigProxy [init] start"

    .line 61
    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->v_inner(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    .line 64
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->handlePreUnitResult()V

    .line 65
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->readLocalConfig()V

    .line 66
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->requestRemoteConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLocalConfigJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->localConfigJson:Lorg/json/JSONObject;

    return-void
.end method

.method public setRemoteConfigJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->remoteConfigJson:Lorg/json/JSONObject;

    return-void
.end method

.method public setRequestLocalConfigDelay(J)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->requestLocalConfigDelay:J

    return-void
.end method

.method public setRequestRemoteConfigDelay(J)V
    .locals 0

    .line 219
    iput-wide p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->requestRemoteConfigDelay:J

    return-void
.end method
