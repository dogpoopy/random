.class public Lcom/netease/download/httpdns/ServicesNodeCore;
.super Ljava/lang/Object;
.source "ServicesNodeCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpDnsCore"


# instance fields
.field private mHost:Ljava/lang/String;

.field private okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/netease/download/httpdns/ServicesNodeCore$1;

    invoke-direct {v0, p0}, Lcom/netease/download/httpdns/ServicesNodeCore$1;-><init>(Lcom/netease/download/httpdns/ServicesNodeCore;)V

    iput-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public declared-synchronized reqServicesNodeIp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip"

    .line 233
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xb

    .line 238
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Host"

    .line 241
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HttpDnsCore"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0chost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "HttpDnsCore"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0curl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    new-instance v1, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v1

    .line 249
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Host"

    .line 250
    invoke-virtual {v1, v2, p2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_1
    const-string p2, "HttpDnsCore"

    const-string v2, "ServicesNodeCore [reqServicesNodeIp] use okhttp"

    .line 253
    invoke-static {p2, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/netease/download/network/OkHttpProxy;->getInstance()Lcom/netease/download/network/OkHttpProxy;

    move-result-object p2

    iget-object v2, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    invoke-virtual {p2, v1, v2}, Lcom/netease/download/network/OkHttpProxy;->execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v1, "HttpDnsCore"

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()I
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip"

    .line 70
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpDnsCore"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u5148\u5bf9\u94fe\u63a5\u505aDNS\u89e3\u6790\uff0coversea="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/netease/download/httpdns/HttpDnsUtil;->getHttpdnsServicesIp()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "netease.com"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "163.com"

    aput-object v3, v0, v2

    const-string v2, "easebar.com"

    .line 80
    invoke-static {v1, v0, v2}, Lcom/netease/download/util/Util;->replaceDomain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "HttpDnsCore"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u5148\u5bf9\u94fe\u63a5\u505aDNS\u89e3\u6790,\u8bf7\u6c42DNS url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/dns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "HttpDnsCore"

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u94fe\u63a5\u505aDNS\u89e3\u6790\uff0cDNS\u7ed3\u679c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    if-eqz v0, :cond_5

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/download/dns/DnsParams$Unit;

    .line 94
    iget-object v4, v3, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-static {v2}, Lcom/netease/download/util/Util;->isIpv6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/"

    invoke-static {v1, v2, v5}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v5, "/"

    .line 102
    invoke-static {v1, v2, v5}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_0
    iget-object v2, v3, Lcom/netease/download/dns/DnsParams$Unit;->domain:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/netease/download/httpdns/ServicesNodeCore;->reqServicesNodeIp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    if-nez v2, :cond_1

    :cond_5
    if-eqz v2, :cond_10

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip, \u91c7\u7528lvsip, \u662f\u5426\u521b\u5efa\u8fc7lvsip\u5217\u8868="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/lvsip/Lvsip;->isCteateIp()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    const-string v0, "https://mbdl.update.netease.com/httpdns.mbdl"

    .line 121
    invoke-static {v0}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/lvsip/Lvsip;->isCteateIp()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 125
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 127
    invoke-virtual {v3}, Lcom/netease/download/config/ConfigParams;->getLvsipArray()[Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 130
    array-length v3, v0

    if-gtz v3, :cond_c

    .line 131
    :cond_7
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 134
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    const-string v3, "mbdl.update.netease.com"

    .line 135
    iput-object v3, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v3, "2"

    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 138
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    const-string v3, "mbdl.update.easebar.com"

    .line 139
    iput-object v3, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v3, "0"

    .line 141
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 146
    :cond_a
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    const-string v3, "mbdl.update.netease.com"

    .line 147
    iput-object v3, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    goto :goto_2

    .line 142
    :cond_b
    :goto_1
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    const-string v3, "mbdl.update.netease.com"

    .line 143
    iput-object v3, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    .line 150
    :cond_c
    :goto_2
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/download/lvsip/Lvsip;->init([Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/lvsip/Lvsip;->createLvsip()V

    .line 155
    :cond_d
    :goto_3
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/lvsip/Lvsip;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v2, :cond_10

    .line 156
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/lvsip/Lvsip;->getNewIpFromArray()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HttpDnsCore"

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip, \u91c7\u7528lvsip\uff0c\u5c06\u8981\u4f7f\u7528\u7684ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 161
    invoke-static {v0}, Lcom/netease/download/util/Util;->isIpv6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-static {v1, v0, v2}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_e
    const-string v2, "/"

    .line 165
    invoke-static {v1, v0, v2}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v1, "HttpDnsCore"

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip, \u91c7\u7528lvsip\uff0c\u5c06\u8981\u4f7f\u7528\u7684host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/netease/download/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/download/httpdns/ServicesNodeCore;->reqServicesNodeIp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_f

    goto :goto_5

    :cond_f
    move-object v1, v0

    goto :goto_3

    .line 178
    :cond_10
    :goto_5
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
