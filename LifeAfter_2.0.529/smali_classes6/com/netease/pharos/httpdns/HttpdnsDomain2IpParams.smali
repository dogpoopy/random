.class public Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;
.super Ljava/lang/Object;
.source "HttpdnsDomain2IpParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsDomain2IpParams"

.field private static sHttpdnsDomain2IpParams:Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

.field private static final sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;
    .locals 1

    .line 32
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpParams:Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    invoke-direct {v0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;-><init>()V

    sput-object v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpParams:Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    .line 36
    :cond_0
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpParams:Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    return-object v0
.end method

.method private isContainCdn(Ljava/lang/String;)Z
    .locals 2

    .line 42
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;

    .line 43
    iget-object v1, v1, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;->domain:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public declared-synchronized getHttpdnsDomain2IpUnitList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/lang/String;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668\uff0c\u521d\u59cb\u5316\u6570\u636e"

    .line 62
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 p1, 0xe

    .line 65
    monitor-exit p0

    return p1

    .line 71
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "domain"

    .line 76
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "addrs"

    .line 77
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    .line 80
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 81
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "ttl"

    .line 86
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    invoke-direct {p0, p1}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->isContainCdn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    new-instance v2, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;

    invoke-direct {v2, p1, v0, v1}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 90
    sget-object p1, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p1, "HttpdnsDomain2IpParams"

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668, \u89e3\u6790\u7ed3\u679c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    monitor-exit p0

    return v3

    :catch_0
    move-exception p1

    .line 97
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 p1, 0xb

    .line 100
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
