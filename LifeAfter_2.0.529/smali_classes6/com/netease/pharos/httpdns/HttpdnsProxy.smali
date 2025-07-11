.class public Lcom/netease/pharos/httpdns/HttpdnsProxy;
.super Ljava/lang/Object;
.source "HttpdnsProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsProxy"

.field private static sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;


# instance fields
.field private final mHttpdnsResolved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/netease/pharos/httpdns/HttpdnsProxy;->mHttpdnsResolved:Z

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;
    .locals 2

    .line 44
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/netease/pharos/httpdns/HttpdnsProxy;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/netease/pharos/httpdns/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/netease/pharos/httpdns/HttpdnsProxy;

    invoke-direct {v1}, Lcom/netease/pharos/httpdns/HttpdnsProxy;-><init>()V

    sput-object v1, Lcom/netease/pharos/httpdns/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;

    return-object v0
.end method

.method private start(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 74
    invoke-static {}, Lcom/netease/pharos/util/Util;->isZoneEast8()Z

    move-result v0

    const-string v1, "HttpdnsProxy"

    if-nez v0, :cond_0

    const-string p1, "Httpdns\u73af\u8282--\u4e0d\u5728\u4e1c\u516b\u533a"

    .line 75
    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x11

    return p1

    .line 79
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0xb

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0c\u8bf7\u6c42\u8fd4\u56de\u503c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "==============================================="

    .line 88
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u901a\u8fc7Httpdns\u89e3\u6790\u57df\u540d"

    .line 92
    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 95
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Httpdns\u73af\u8282-- i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", \u57df\u540d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v4, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;

    invoke-direct {v4}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;-><init>()V

    .line 98
    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->init(Ljava/lang/String;)V

    .line 100
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 108
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Httpdns\u73af\u8282--\u8bf7\u6c42httpdns\u670d\u52a1\u5668\uff0c\u89e3\u6790\u57df\u540d\uff0c\u83b7\u53d6\u7ed3\u679c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Httpdns\u73af\u8282--\u8bf7\u6c42httpdns\u670d\u52a1\u5668\uff0c\u89e3\u6790\u57df\u540d Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Httpdns\u73af\u8282--\u8bf7\u6c42httpdns\u670d\u52a1\u5668\uff0c\u89e3\u6790\u57df\u540d InterruptedException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Httpdns\u73af\u8282--\u8bf7\u6c42httpdns\u670d\u52a1\u5668\uff0c\u89e3\u6790\u57df\u540d ExecutionException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Httpdns\u73af\u8282--\u901a\u8fc7Httpdns\u89e3\u6790\u57df\u540d, \u89e3\u6790\u8fd4\u56de\u503c="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Httpdns\u73af\u8282--\u7ed3\u679c\u6570\u636e\uff0chttpdns\u89e3\u6790\u57df\u540d\u83b7\u53d6ip\u6570\u636e="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getHttpdnsDomain2IpUnitList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_4
    move-exception p2

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Httpdns\u73af\u8282--\u901a\u8fc7Httpdns\u89e3\u6790\u57df\u540d, \u89e3\u6790\u8fd4\u56de\u503c Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_2
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getHttpdnsDomain2IpUnitList()Ljava/util/ArrayList;

    move-result-object p2

    .line 131
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->init(Ljava/lang/String;Ljava/util/ArrayList;)V

    return v0

    :cond_4
    :goto_3
    const-string p1, "Httpdns\u73af\u8282--\u53c2\u6570\u9519\u8bef"

    .line 80
    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xe

    return p1
.end method


# virtual methods
.method public getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    .locals 1

    .line 157
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized synStart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Httpdns\u73af\u8282--\u5f00\u59cbhttpdns\u6d41\u7a0b"

    .line 60
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->start(Ljava/lang/String;[Ljava/lang/String;)I

    const-string p1, "Httpdns\u73af\u8282--\u7ed3\u675fhttpdns\u6d41\u7a0b"

    .line 62
    invoke-static {p1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "HttpdnsProxy"

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Httpdns\u73af\u8282--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u5df2\u7ecf\u8bf7\u6c42\u8fc7httpdns"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
