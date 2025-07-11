.class public Lcom/netease/pharos/deviceCheck/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field private static sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;


# instance fields
.field private isSupportIpV6:Z

.field private mAreazoneContinent:Ljava/lang/String;

.field private mAreazoneCountry:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mDecisionTag:Ljava/lang/String;

.field private mGateway:Ljava/lang/String;

.field private mIpContinent:Ljava/lang/String;

.field private mIpCountry:Ljava/lang/String;

.field private mIpIspId:Ljava/lang/String;

.field private mIpIspName:Ljava/lang/String;

.field private mIpLocalV6:Ljava/lang/String;

.field private mIpPayload:Ljava/lang/String;

.field private mIpSig:Ljava/lang/String;

.field private mIpaddr:Ljava/lang/String;

.field private mIpaddrV6:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mMethod:Ljava/lang/String;

.field private mNameserver:Ljava/lang/String;

.field private mNetid:Ljava/lang/String;

.field private mNetworkIsp:Ljava/lang/String;

.field private mNetworkIspName:Ljava/lang/String;

.field private mNetworkSignal:Ljava/lang/String;

.field private mOsName:Ljava/lang/String;

.field private mOsVer:Ljava/lang/String;

.field private mProbeRegion:Ljava/lang/String;

.field private mProbeTag:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mTimezone:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;

.field private mUdpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mipProvince:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddr:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpContinent:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpCountry:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mipProvince:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    .line 53
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddrV6:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpPayload:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpSig:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNameserver:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mGateway:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mTimezone:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsVer:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    .line 71
    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mCountryCode:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mLocation:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mDecisionTag:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeTag:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    .line 82
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    const-string v0, "unknown"

    .line 83
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspName:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getUdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmNetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;
    .locals 2

    .line 92
    sget-object v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;

    if-nez v0, :cond_1

    .line 93
    const-class v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;

    invoke-direct {v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;-><init>()V

    sput-object v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;

    .line 97
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 1

    monitor-enter p0

    .line 566
    :try_start_0
    new-instance v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;

    invoke-direct {v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceCheck/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAreazoneContinent()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    return-object v0
.end method

.method public getAreazoneCountry()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo(Z)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "DeviceInfo"

    .line 392
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "project"

    .line 395
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, "00000"

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    :try_start_1
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v4, "2.8.0"

    .line 396
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "udid"

    .line 397
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "netid"

    .line 398
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v5, v4

    :cond_2
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ipaddr"

    .line 402
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddr:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_continent"

    .line 403
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpContinent:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_country"

    .line 404
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpCountry:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_province"

    .line 405
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mipProvince:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_ipv6"

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6()Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "ip_local_v6"

    .line 409
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, ""

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v5

    :goto_2
    :try_start_2
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ipaddr_v6"

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v5, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddrV6:Ljava/lang/String;

    :cond_4
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    const-string v0, "ip_payload"

    .line 413
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpPayload:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_sig"

    .line 414
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpSig:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "nameserver"

    .line 418
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNameserver:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network"

    .line 421
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/network/NetworkStatus;->getNetwork()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_switch"

    .line 422
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/network/NetworkStatus;->isNetworkChanged()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "1"

    goto :goto_3

    :cond_6
    const-string v4, "0"

    :goto_3
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_isp"

    .line 423
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_signal"

    .line 424
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_isp_name"

    .line 425
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gateway"

    .line 428
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mGateway:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "timezone"

    .line 431
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mTimezone:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "areazone_continent"

    .line 432
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "areazone_country"

    .line 433
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os_name"

    .line 436
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os_ver"

    .line 437
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsVer:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "location"

    .line 440
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    iget-object v0, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 443
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 447
    iget-object v0, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUdpMap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v5, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide v8, 0x40b3880000000000L    # 5000.0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 451
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 452
    iget-object v12, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    const/4 v13, 0x0

    move-wide v13, v8

    const/4 v9, 0x0

    move-object v8, v0

    .line 454
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_8

    .line 455
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v0, 0x1

    if-ne v0, v9, :cond_7

    .line 457
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    if-le v15, v0, :cond_7

    .line 460
    :try_start_3
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pRtt="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, ", rtt="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    cmpl-double v0, v15, v6

    if-eqz v0, :cond_7

    cmpg-double v0, v6, v13

    if-gez v0, :cond_7

    .line 466
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tBestRegion="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pRegion="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-wide v13, v6

    move-object v8, v10

    goto :goto_7

    :catch_0
    move-exception v0

    move-wide v13, v6

    move-object v8, v10

    goto :goto_6

    :catch_1
    move-exception v0

    .line 469
    :goto_6
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_8
    const-wide v6, 0x40b3880000000000L    # 5000.0

    cmpl-double v0, v6, v13

    if-eqz v0, :cond_9

    .line 476
    invoke-virtual {v1, v8}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    const-string v0, "udpping"

    .line 477
    iput-object v0, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    .line 480
    :cond_9
    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v8

    move-wide v8, v13

    goto/16 :goto_4

    :cond_a
    const-string v0, "udp"

    .line 483
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v0, "region"

    .line 487
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "probe_region"

    .line 488
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "method"

    .line 489
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "decision"

    .line 490
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "testlog"

    .line 491
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/PharosProxy;->getTestLog()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "country_code"

    .line 493
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cell_id"

    .line 496
    invoke-static {}, Lcom/netease/pharos/util/Util;->getCellId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ip_local"

    .line 497
    invoke-static {}, Lcom/netease/pharos/util/Util;->getLocalIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "decision_tag"

    .line 498
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mDecisionTag:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "probe_tag"

    .line 499
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeTag:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_isp_id"

    .line 501
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip_isp_name"

    .line 502
    iget-object v4, v1, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    invoke-static {v4}, Lcom/netease/pharos/util/Util;->getNetworkIspName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 505
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceInfo JSONException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mGateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIpContinent()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpContinent:Ljava/lang/String;

    return-object v0
.end method

.method public getIpCountry()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getIpLocalAddrV6()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getIpPayload()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getIpSig()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpSig:Ljava/lang/String;

    return-object v0
.end method

.method public getIpaddr()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpaddrV6()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddrV6:Ljava/lang/String;

    return-object v0
.end method

.method public getNameserver()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNameserver:Ljava/lang/String;

    return-object v0
.end method

.method public getNetid()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkIsp()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkIspName()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsVer:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfo"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public getipProvince()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mipProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getmCountryCode()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmDecisionTag()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mDecisionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpIspId()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpIspName()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspName:Ljava/lang/String;

    return-object v0
.end method

.method public getmLocation()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getmMethod()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getmProbeRegion()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getmProbeTag()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeTag:Ljava/lang/String;

    return-object v0
.end method

.method public getmUdpMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    return-object v0
.end method

.method public handleProbeAndHarborRegion()V
    .locals 13

    const-string v0, "DeviceInfo"

    const-string v1, "DeviceInfo [handleProbeAndHarborRegion] start"

    .line 523
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2]"

    .line 524
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setmProbeRegion(Ljava/lang/String;)V

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] mProbeRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmConfigRegion()Ljava/lang/String;

    move-result-object v1

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] configRegion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmIspNum()D

    move-result-wide v3

    .line 535
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmIpv6Num()D

    move-result-wide v5

    .line 536
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    .line 537
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    .line 538
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] ispRandomNum="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", ispNum="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", ipv6RandomNum="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", ipv6Num="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 541
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] ismHarbor= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismHarbor()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] ismProbe= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismProbe()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismHarbor()Z

    move-result v11

    if-eqz v11, :cond_0

    cmpg-double v11, v7, v3

    if-gez v11, :cond_0

    .line 545
    invoke-virtual {p0, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 548
    :cond_0
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismProbe()Z

    move-result v11

    if-eqz v11, :cond_1

    cmpg-double v11, v7, v3

    if-gez v11, :cond_1

    .line 549
    invoke-virtual {p0, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setmProbeRegion(Ljava/lang/String;)V

    .line 552
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] mProbeRegion1= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    cmpg-double v1, v9, v5

    if-gez v1, :cond_3

    .line 555
    invoke-virtual {p0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 556
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmConfigConfigIpv6RegionTag()Ljava/lang/String;

    move-result-object v1

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] mConfigConfigIpv6RegionTag= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 562
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfo [handleProbeAndHarborRegion] [region \u5206\u88c2] mProbeRegion3= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isSupportIpV6()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddrV6:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isIpv6Verify()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    return v0
.end method

.method public setAreazoneContinent(Ljava/lang/String;)V
    .locals 2

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setAreazoneCountry(Ljava/lang/String;)V
    .locals 2

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mGateway:Ljava/lang/String;

    return-void
.end method

.method public setIpContinent(Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpContinent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIpCountry(Ljava/lang/String;)V
    .locals 2

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpCountry:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIpLocalAddrV6(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpLocalV6:Ljava/lang/String;

    return-void
.end method

.method public setIpPayload(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpPayload:Ljava/lang/String;

    return-void
.end method

.method public setIpSig(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpSig:Ljava/lang/String;

    return-void
.end method

.method public setIpaddr(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddr:Ljava/lang/String;

    return-void
.end method

.method public setIpaddrV6(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpaddrV6:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6:Z

    return-void
.end method

.method public setNameserver(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNameserver:Ljava/lang/String;

    return-void
.end method

.method public setNetid(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetid:Ljava/lang/String;

    return-void
.end method

.method public setNetworkIsp(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    return-void
.end method

.method public setNetworkIspName(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    return-void
.end method

.method public setNetworkSignal(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsName:Ljava/lang/String;

    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mOsVer:Ljava/lang/String;

    return-void
.end method

.method public setProject(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProject:Ljava/lang/String;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mTimezone:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdid:Ljava/lang/String;

    return-void
.end method

.method public setipProvince(Ljava/lang/String;)V
    .locals 2

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mipProvince:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setmCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setmDecisionTag(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mDecisionTag:Ljava/lang/String;

    return-void
.end method

.method public setmIpIspId(Ljava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspId:Ljava/lang/String;

    return-void
.end method

.method public setmIpIspName(Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mIpIspName:Ljava/lang/String;

    return-void
.end method

.method public setmLocation(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public setmMethod(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mMethod:Ljava/lang/String;

    return-void
.end method

.method public setmProbeRegion(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeRegion:Ljava/lang/String;

    return-void
.end method

.method public setmProbeTag(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mProbeTag:Ljava/lang/String;

    return-void
.end method

.method public setmRegion(Ljava/lang/String;)V
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRegion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfo"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public setmUdpMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DeviceInfo;->mUdpMap:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
