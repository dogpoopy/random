.class public Lcom/netease/ntunisdk/extend/NetworkCardInfo;
.super Ljava/lang/Object;
.source "NetworkCardInfo.java"

# interfaces
.implements Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/extend/NetworkCardInfo$NetworkInfoItem;
    }
.end annotation


# static fields
.field private static final METHODIS:[Ljava/lang/String;

.field private static final NETWORK_CARD_PREFIX_MOBILE1:Ljava/lang/String; = "rmnet"

.field private static final NETWORK_CARD_PREFIX_MOBILE2:Ljava/lang/String; = "ccmni"

.field private static final NETWORK_CARD_PREFIX_MOBILE3:Ljava/lang/String; = "seth"

.field private static final NETWORK_CARD_PREFIX_WIFI:Ljava/lang/String; = "wlan"

.field private static final TAG:Ljava/lang/String; = "NetworkCardInfo"

.field private static volatile isRegister:Z = false

.field private static volatile networkCardInfo:Lcom/netease/ntunisdk/extend/NetworkCardInfo; = null

.field private static volatile networkState:Ljava/lang/String; = "unknown"


# instance fields
.field private callback:Lcom/netease/ntunisdk/modules/api/ModulesCallback;

.field private sdkExtend:Lcom/netease/ntunisdk/SdkExtend;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "monitorNetworkState"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "networkInterfacesInfo"

    aput-object v2, v0, v1

    .line 92
    sput-object v0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->METHODIS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->sdkExtend:Lcom/netease/ntunisdk/SdkExtend;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->isRegister:Z

    return v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    sput-object p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/extend/NetworkCardInfo;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->callbackNetworkState()V

    return-void
.end method

.method private callMonitorNetworkState(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 3

    const-string v0, "NetworkCardInfo"

    .line 173
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "monitorNetworkState"

    .line 174
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "switch"

    const-string v2, "-1"

    .line 175
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->getInstance()Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->registerReceiver(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v2, "0"

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-static {}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->getInstance()Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->unregisterReceiver(Landroid/content/Context;)V

    goto :goto_0

    .line 181
    :cond_1
    sget-object p3, Lcom/netease/ntunisdk/ExtendCode;->PARAM_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p1, p3}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 182
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private callNetworkInterfacesInfo(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 10

    const-string v0, "type"

    const-string v1, "networkInterfacesInfo"

    const-string v2, "NetworkCardInfo"

    .line 144
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extendFunc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    .line 147
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 149
    invoke-virtual {p0}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->getAllNetInterface()Ljava/util/HashMap;

    move-result-object v3

    .line 150
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/extend/NetworkCardItem;

    .line 153
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 154
    invoke-virtual {v4}, Lcom/netease/ntunisdk/extend/NetworkCardItem;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "addr_v4"

    .line 155
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/extend/NetworkCardItem;->getIpv4()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "addr_v6"

    .line 156
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/extend/NetworkCardItem;->getIpv6()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v4}, Lcom/netease/ntunisdk/extend/NetworkCardItem;->getIpv4()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "unknown"

    .line 158
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_0
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v0, "interfacesInfo"

    .line 162
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFuncCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/netease/ntunisdk/ExtendCode;->SUCCESS:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 165
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private callbackNetworkState()V
    .locals 4

    .line 191
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "monitorNetworkState"

    .line 192
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "state"

    .line 193
    sget-object v2, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    iget-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->sdkExtend:Lcom/netease/ntunisdk/SdkExtend;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "NetworkCardInfo"

    if-eqz v1, :cond_0

    .line 195
    :try_start_1
    sget-object v1, Lcom/netease/ntunisdk/ExtendCode;->SUCCESS:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 196
    iget-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->sdkExtend:Lcom/netease/ntunisdk/SdkExtend;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/ntunisdk/SdkExtend;->extendFuncCall(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendFuncCall: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "sdkBaseInstance is null"

    .line 199
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/extend/NetworkCardInfo;
    .locals 2

    .line 82
    sget-object v0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkCardInfo:Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    if-nez v0, :cond_1

    .line 83
    const-class v0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkCardInfo:Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkCardInfo:Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    .line 87
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkCardInfo:Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    return-object v0
.end method

.method private getNetworkCardType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "rmnet"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ccmni"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "seth"

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "wlan"

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "unknown"

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "wwan"

    return-object p1
.end method

.method private sendNetworkState(Ljava/lang/String;)V
    .locals 5

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3fb56f5e

    const-string v2, "unknown"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x10fa53b6

    if-eq v0, v1, :cond_1

    const v1, 0x37af15

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "mobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "NetworkCardInfo"

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_2

    .line 311
    :cond_4
    sput-object v2, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkState:Ljava/lang/String;

    const-string p1, "sendNetworkState sendNetworkState: unknown"

    .line 312
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "wwan"

    .line 307
    sput-object p1, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkState:Ljava/lang/String;

    const-string p1, "sendNetworkState sendNetworkState: wwan"

    .line 308
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "wlan"

    .line 303
    sput-object p1, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->networkState:Ljava/lang/String;

    const-string p1, "sendNetworkState sendNetworkState: wlan"

    .line 304
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->callbackNetworkState()V

    return-void
.end method


# virtual methods
.method public extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "networkInterfacesInfo"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p2, p3}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->callNetworkInterfacesInfo(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;)V

    goto :goto_0

    :cond_0
    const-string v0, "monitorNetworkState"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->callMonitorNetworkState(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getAllNetInterface()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/extend/NetworkCardItem;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 260
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 261
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 262
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 263
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 265
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 267
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 268
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/extend/NetworkCardItem;

    :cond_1
    if-nez v6, :cond_2

    .line 271
    new-instance v6, Lcom/netease/ntunisdk/extend/NetworkCardItem;

    invoke-direct {v6}, Lcom/netease/ntunisdk/extend/NetworkCardItem;-><init>()V

    .line 273
    :cond_2
    invoke-direct {p0, v5}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->getNetworkCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/ntunisdk/extend/NetworkCardItem;->setType(Ljava/lang/String;)V

    .line 274
    instance-of v7, v4, Ljava/net/Inet6Address;

    if-eqz v7, :cond_3

    .line 275
    invoke-virtual {v6}, Lcom/netease/ntunisdk/extend/NetworkCardItem;->getIpv6()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_3
    invoke-virtual {v6}, Lcom/netease/ntunisdk/extend/NetworkCardItem;->getIpv4()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_1
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkCardInfo"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public getMethodIds()[Ljava/lang/String;
    .locals 1

    .line 127
    sget-object v0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->METHODIS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 6

    const-string p1, "deviceInfo"

    const-string v0, "extend"

    const-string v1, "NetworkCardInfo"

    :try_start_0
    const-string v2, "start register networkCardInfoReceiver"

    .line 223
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-boolean v2, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->isRegister:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 225
    sput-boolean v2, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->isRegister:Z

    .line 226
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "methodId"

    const-string v5, "getNetworkType"

    .line 227
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, p1, v3}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->sendNetworkState(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->callback:Lcom/netease/ntunisdk/modules/api/ModulesCallback;

    invoke-virtual {v3, v0, v2, p1, v4}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->addModuleCallback(Ljava/lang/String;ZLjava/lang/String;Lcom/netease/ntunisdk/modules/api/ModulesCallback;)I

    const-string p1, "register networkCardInfoReceiver success"

    .line 231
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "networkCardInfoReceiver already registered"

    .line 233
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register networkCardInfoReceiver throw Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSdkExtend(Lcom/netease/ntunisdk/SdkExtend;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->sdkExtend:Lcom/netease/ntunisdk/SdkExtend;

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->sdkExtend:Lcom/netease/ntunisdk/SdkExtend;

    .line 47
    :cond_0
    new-instance p1, Lcom/netease/ntunisdk/extend/NetworkCardInfo$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/extend/NetworkCardInfo$1;-><init>(Lcom/netease/ntunisdk/extend/NetworkCardInfo;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->callback:Lcom/netease/ntunisdk/modules/api/ModulesCallback;

    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 3

    const-string p1, "NetworkCardInfo"

    :try_start_0
    const-string v0, "start unregister networkCardInfoReceiver"

    .line 243
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-boolean v0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->isRegister:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 245
    sput-boolean v0, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->isRegister:Z

    const-string v0, "unregister networkCardInfoReceiver success"

    .line 246
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "networkCardInfoReceiver already unregistered"

    .line 248
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister networkCardInfoReceiver throw Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
