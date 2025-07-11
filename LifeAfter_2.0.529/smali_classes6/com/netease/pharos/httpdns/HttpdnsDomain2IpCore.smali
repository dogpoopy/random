.class public Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;
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

.field private final mDomainDealer:Lcom/netease/pharos/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network/NetworkDealer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore$1;-><init>(Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;)V

    iput-object v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomainDealer:Lcom/netease/pharos/network/NetworkDealer;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mStartTime:J

    return-wide v0
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->start()I

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

    .line 33
    invoke-virtual {p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p1}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public declared-synchronized reqCdnTargetIp(Ljava/lang/String;)I
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u521d\u59cb\u5316"

    .line 106
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "HttpdnsDomain2IpCore"

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0curl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    new-array v3, v2, [C

    const/16 v4, 0x6f

    aput-char v4, v3, v1

    const/16 v4, 0x35

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const/4 v4, 0x2

    const/16 v5, 0x62

    aput-char v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x57

    aput-char v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x65

    aput-char v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x36

    aput-char v5, v3, v4

    const/4 v4, 0x6

    const/16 v5, 0x68

    aput-char v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0x6e

    aput-char v5, v3, v4

    .line 114
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 115
    aget-char v6, v3, v5

    .line 116
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "AUTH-TOKEN"

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AUTH-PROJECT"

    const-string v3, "impression"

    .line 120
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mStartTime:J

    const/4 v2, 0x0

    const-string v3, "GET"

    .line 122
    iget-object v4, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomainDealer:Lcom/netease/pharos/network/NetworkDealer;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/netease/pharos/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 125
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const-string p1, "HttpdnsDomain2IpCore"

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d,\u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public start()I
    .locals 3

    const-string v0, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u5f00\u59cb"

    .line 84
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/netease/pharos/util/Util;->isZoneEast8()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    return v0

    .line 90
    :cond_0
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->ismEB()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "httpdns.nie.easebar.com"

    goto :goto_0

    :cond_1
    const-string v0, "httpdns.nie.netease.com"

    .line 93
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Httpdns\u73af\u8282--httpdns\u670d\u52a1\u5668:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/pharos/util/Util;->getHttpDnsDomain2IpUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->reqCdnTargetIp(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
