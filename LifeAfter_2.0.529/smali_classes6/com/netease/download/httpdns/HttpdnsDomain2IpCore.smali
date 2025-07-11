.class public Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;
.super Ljava/lang/Object;
.source "HttpdnsDomain2IpCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsDomain2IpCore"


# instance fields
.field private mDomain:Ljava/lang/String;

.field private mHttpdnsServicesIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mStartTime:J

.field private mZone:Ljava/lang/String;

.field private okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    .line 88
    new-instance v0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore$1;

    invoke-direct {v0, p0}, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore$1;-><init>(Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;)V

    iput-object v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mStartTime:J

    return-wide v0
.end method

.method private hasNext()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    iget-object v2, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private next()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    if-le v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    iget v1, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->start()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p1, Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;->zone:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mZone:Ljava/lang/String;

    .line 56
    iget-object p1, p1, Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;->ipArrayList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    const-string p1, "/"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p2}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_0
    iput-object p2, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized reqCdnTargetIp(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u521d\u59cb\u5316"

    .line 164
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "HttpdnsDomain2IpCore"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0curl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mStartTime:J

    .line 174
    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object p1

    .line 176
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "HttpdnsDomain2IpCore"

    const-string v1, "Httpdns\u73af\u8282--\u5927\u9646"

    .line 183
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Host"

    const-string v1, "httpdns.nie.netease.com"

    .line 184
    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "HttpdnsDomain2IpCore"

    const-string v1, "Httpdns\u73af\u8282--\u6d77\u5916"

    .line 179
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Host"

    const-string v1, "httpdns.nie.easebar.com"

    .line 180
    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 187
    :goto_1
    invoke-static {}, Lcom/netease/download/network/OkHttpProxy;->getInstance()Lcom/netease/download/network/OkHttpProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    invoke-virtual {v0, p1, v1}, Lcom/netease/download/network/OkHttpProxy;->execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I

    move-result p1

    const-string v0, "HttpdnsDomain2IpCore"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d,\u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->start()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()I
    .locals 2

    const-string v0, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u5f00\u59cb"

    .line 145
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->next()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/download/httpdns/HttpDnsUtil;->getHttpdnsDomain2IpUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/netease/download/httpdns/HttpdnsDomain2IpCore;->reqCdnTargetIp(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    return v0
.end method
