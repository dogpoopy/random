.class public Lcom/netease/pharos/qos/CheckHighSpeedResult;
.super Ljava/lang/Object;
.source "CheckHighSpeedResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckHighSpeedResult"

.field private static sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;


# instance fields
.field private mHighSpeedUdpResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/config/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIp:Ljava/lang/String;

.field private final mIpAddr:Ljava/lang/String;

.field private final mIpPayLoad:Ljava/lang/String;

.field private final mIpSig:Ljava/lang/String;

.field private final mMethod:Ljava/lang/String;

.field private final mNetid:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPorts:Lorg/json/JSONArray;

.field private final mProject:Ljava/lang/String;

.field private final mRegion:Ljava/lang/String;

.field private final mServer:Ljava/lang/String;

.field private final mUdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mProject:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mUdid:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mNetid:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mRegion:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mMethod:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIpAddr:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIpPayLoad:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIpSig:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mServer:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPort:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPorts:Lorg/json/JSONArray;

    .line 46
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;
    .locals 2

    .line 53
    sget-object v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;

    invoke-direct {v1}, Lcom/netease/pharos/qos/CheckHighSpeedResult;-><init>()V

    sput-object v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    return-object v0
.end method


# virtual methods
.method public cleanData()V
    .locals 1

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    return-void
.end method

.method public getResult(I)Lorg/json/JSONObject;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "server"

    const-string v3, "CheckHighSpeedResult"

    .line 124
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 125
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 127
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmIp()Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    :try_start_0
    const-string v8, "project"

    .line 130
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getProject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "udid"

    .line 131
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "netid"

    .line 132
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getNetid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "region"

    .line 133
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "method"

    .line 134
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getmMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ipaddr"

    .line 135
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpaddr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ip_payload"

    .line 136
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpPayload()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ip_sig"

    .line 137
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpSig()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "network_ipv6"

    .line 139
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6()Z

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "ip_local_v6"

    .line 140
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpLocalAddrV6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ipaddr_v6"

    .line 141
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpaddrV6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "network"

    .line 142
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/network/NetworkStatus;->getNetwork()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "network_switch"

    .line 143
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/network/NetworkStatus;->isNetworkChanged()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "1"

    goto :goto_1

    :cond_1
    const-string v9, "0"

    :goto_1
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 145
    iget-object v9, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPorts:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v11, ""

    const-string v12, ","

    if-eqz v9, :cond_a

    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_a

    const/4 v9, 0x0

    const/4 v13, 0x1

    .line 149
    :goto_2
    iget-object v14, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPorts:Lorg/json/JSONArray;

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v9, v14, :cond_8

    .line 150
    iget-object v14, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPorts:Lorg/json/JSONArray;

    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 151
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 153
    iget-object v10, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 155
    iget-object v10, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/netease/pharos/config/CheckResult;

    .line 156
    invoke-virtual/range {v16 .. v16}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual/range {v16 .. v16}, Lcom/netease/pharos/config/CheckResult;->getmPort()I

    .line 158
    invoke-virtual/range {v16 .. v16}, Lcom/netease/pharos/config/CheckResult;->getmExtra()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v10

    .line 160
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v4

    :try_start_2
    const-string v4, "CheckHighSpeedResult [getResult] port="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pExtra="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 165
    array-length v6, v4

    const/4 v10, 0x1

    if-le v6, v10, :cond_2

    const/4 v6, 0x0

    .line 166
    aget-object v19, v4, v6

    .line 167
    aget-object v4, v4, v10

    move-object/from16 v6, v19

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 171
    :goto_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 172
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 173
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 175
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    move-object/from16 v10, v16

    move-object/from16 v4, v18

    goto :goto_3

    :cond_4
    move-object/from16 v18, v4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckHighSpeedResult [getResult] portArray111="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 181
    iget-object v4, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 182
    iput-object v11, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    .line 184
    :cond_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v14, v11

    .line 187
    :cond_6
    iget-object v4, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 188
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 190
    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v13, :cond_7

    .line 191
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    .line 192
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckHighSpeedResult [getResult] portArray222="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckHighSpeedResult [getResult] serverData="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v18

    goto/16 :goto_2

    :cond_8
    move-object/from16 v18, v4

    if-eqz v7, :cond_9

    if-eqz v13, :cond_9

    const/16 v17, 0x1

    goto :goto_6

    :cond_9
    const/16 v17, 0x0

    .line 197
    :goto_6
    :try_start_3
    invoke-virtual {v5, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move/from16 v7, v17

    goto/16 :goto_e

    :cond_a
    move-object/from16 v18, v4

    .line 199
    :try_start_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 202
    iget-object v4, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckHighSpeedResult [getResult] mHighSpeedUdpResult="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v4, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/pharos/config/CheckResult;

    .line 208
    invoke-virtual {v6}, Lcom/netease/pharos/config/CheckResult;->getmExtra()Ljava/lang/String;

    move-result-object v8

    .line 211
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 212
    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 213
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_b

    const/4 v9, 0x0

    .line 214
    aget-object v13, v8, v9

    .line 215
    aget-object v8, v8, v10

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    .line 219
    :goto_8
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 220
    invoke-virtual {v6}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 221
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 222
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 226
    :cond_c
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 228
    iget-object v6, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 229
    iput-object v11, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    .line 232
    :cond_d
    iget-object v6, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPorts:Lorg/json/JSONArray;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v8, 0x1

    if-lt v6, v8, :cond_e

    .line 233
    iget-object v6, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPorts:Lorg/json/JSONArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    .line 235
    iget-object v6, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPort:Ljava/lang/String;

    .line 238
    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CheckHighSpeedResult [getResult] mIp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mPort="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 240
    iget-object v9, v1, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 241
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 242
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 243
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v10, 0x1

    if-le v4, v10, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    .line 244
    :goto_a
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :cond_10
    const/4 v10, 0x1

    const/4 v4, 0x1

    :goto_b
    if-eqz v7, :cond_11

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :goto_c
    move/from16 v17, v0

    :goto_d
    move/from16 v7, v17

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    .line 249
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckHighSpeedResult [getResult] Exception1="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    :try_start_5
    const-string v0, "harbor_status"

    .line 252
    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v4, v18

    .line 253
    :try_start_6
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v4, v18

    .line 256
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckHighSpeedResult [getResult] Exception2="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-object v4
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPort:Ljava/lang/String;

    return-void
.end method

.method public init(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPorts:Lorg/json/JSONArray;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    sput-object v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    return-void
.end method

.method public setHighSpeedUdpResult(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/config/CheckResult;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    return-void
.end method
