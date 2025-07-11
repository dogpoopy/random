.class public Lcom/netease/pharos/deviceCheck/NetDnsCore;
.super Ljava/lang/Object;
.source "NetDnsCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetDnsCore"

.field private static sNetDnsCore:Lcom/netease/pharos/deviceCheck/NetDnsCore;


# instance fields
.field private final dealer:Lcom/netease/pharos/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network/NetworkDealer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://nstool.netease.com/jsonify/"

    .line 42
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->mUrl:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/netease/pharos/deviceCheck/NetDnsCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/deviceCheck/NetDnsCore$1;-><init>(Lcom/netease/pharos/deviceCheck/NetDnsCore;)V

    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceCheck/NetDnsCore;
    .locals 1

    .line 49
    sget-object v0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->sNetDnsCore:Lcom/netease/pharos/deviceCheck/NetDnsCore;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/netease/pharos/deviceCheck/NetDnsCore;

    invoke-direct {v0}, Lcom/netease/pharos/deviceCheck/NetDnsCore;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->sNetDnsCore:Lcom/netease/pharos/deviceCheck/NetDnsCore;

    .line 52
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->sNetDnsCore:Lcom/netease/pharos/deviceCheck/NetDnsCore;

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 12

    const-string v0, "msg"

    const-string v1, "dns"

    const-string v2, "dns_isp"

    const-string v3, "dns_city"

    const-string v4, "res"

    const-string v5, "ip_isp"

    const-string v6, "ip_province"

    const-string v7, "ip"

    const-string v8, "ip_city"

    const-string v9, "dns_province"

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89e3\u6790\u5185\u5bb9---"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "NetDnsCore"

    invoke-static {v11, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 216
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    :cond_0
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    :cond_1
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    :cond_2
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    :cond_3
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    :cond_4
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    :cond_5
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    :cond_6
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    :cond_7
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string p1, ""

    .line 227
    :goto_0
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    :cond_9
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setNameserver(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method

.method public start()I
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->mUrl:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->ismEB()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://dl.nstool.easebar.com/jsonify/"

    .line 94
    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->mUrl:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/netease/pharos/deviceCheck/NetDnsCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetDnsCore"

    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 103
    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "domain\u4e3a\u7a7a"

    .line 106
    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v4, "\u8d70Httpdns"

    .line 110
    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 112
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v2

    const-string v5, "Pharos_nstool"

    invoke-virtual {v2, v5, v4}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpdns\u7ed3\u679c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->getHttpdnsUrlUnitList()Ljava/util/ArrayList;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    .line 122
    iget-object v4, v1, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 123
    iget-object v1, v1, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u539furl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "/"

    .line 126
    invoke-static {v0, v4, v5}, Lcom/netease/pharos/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u65b0url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/netease/pharos/deviceCheck/NetDnsCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Httpdns \uff0c\u8fd4\u56de\u7801="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    goto :goto_0

    :cond_3
    const-string v0, "httpdns\u7ed3\u679c\u4e3a\u7a7a"

    .line 137
    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const-string v0, "Dns \u67e5\u8be2 net_dns"

    .line 146
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [C

    .line 150
    fill-array-data v1, :array_0

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Tg"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Rb"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v6, "Vr"

    aput-object v6, v3, v4

    const-string v4, "j43"

    aput-object v4, v3, v0

    .line 153
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_0

    .line 155
    aget-char v7, v1, v6

    .line 156
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v5, v2, :cond_1

    .line 159
    aget-object v0, v3, v5

    .line 160
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 163
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-AUTH-PROJECT"

    const-string v2, "impression"

    .line 164
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-AUTH-TOKEN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Host"

    .line 169
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    :try_start_0
    const-string v1, "GET"

    .line 175
    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/NetDnsCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    invoke-static {p1, p2, v1, v0, v2}, Lcom/netease/pharos/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    const/16 p1, 0xb

    .line 182
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dns \u67e5\u8be2 net_dns---\u7ed3\u679c="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    return p1

    :array_0
    .array-data 2
        0x50s
        0x46s
        0x74s
    .end array-data
.end method
