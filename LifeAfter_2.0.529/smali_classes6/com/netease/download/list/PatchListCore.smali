.class public Lcom/netease/download/list/PatchListCore;
.super Ljava/lang/Object;
.source "PatchListCore.java"

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
.field private static final TAG:Ljava/lang/String; = "PatchListCore"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileId:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mLogData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMd5:Ljava/lang/String;

.field private mUrlPath:Ljava/lang/String;

.field private okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->mContext:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->mUrlPath:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->mFileName:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->mMd5:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->mFilePath:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->mHost:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->mFileId:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->mLogData:Ljava/util/HashMap;

    .line 177
    new-instance v0, Lcom/netease/download/list/PatchListCore$1;

    invoke-direct {v0, p0}, Lcom/netease/download/list/PatchListCore$1;-><init>(Lcom/netease/download/list/PatchListCore;)V

    iput-object v0, p0, Lcom/netease/download/list/PatchListCore;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/download/list/PatchListCore;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/download/list/PatchListCore;->mFileId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/download/list/PatchListCore;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method private downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string p1, "\u4e0b\u8f7d\u914d\u7f6e\u5217\u8868\u6587\u4ef6"

    .line 271
    invoke-static {p1}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 275
    invoke-static {p2}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PatchListCore"

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipAddr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/"

    .line 279
    invoke-static {p2, p3, v0}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 281
    invoke-static {p3}, Lcom/netease/download/util/Util;->isIpv6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {p2, p3, v0}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 288
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/netease/download/list/PatchListCore;->mHost:Ljava/lang/String;

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 296
    iget-object v2, p0, Lcom/netease/download/list/PatchListCore;->mMd5:Ljava/lang/String;

    const-string v3, "Not_MD5_BUT_LVSIP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\u6ca1\u6709\u8bbe\u7f6eMD5\uff0c\u76f4\u63a5\u8d70lvsip"

    .line 297
    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 299
    iput-object v2, p0, Lcom/netease/download/list/PatchListCore;->mMd5:Ljava/lang/String;

    :cond_2
    const/16 v2, 0xb

    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_3

    .line 309
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 310
    new-instance p3, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {p3}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3, p2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "Host"

    .line 311
    invoke-virtual {p3, v0, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 312
    invoke-static {}, Lcom/netease/download/network/OkHttpProxy;->getInstance()Lcom/netease/download/network/OkHttpProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/download/list/PatchListCore;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    invoke-virtual {p1, p3, v0}, Lcom/netease/download/network/OkHttpProxy;->execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "result="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\uff0cconfigUrl="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 318
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 319
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    :goto_1
    move-object p2, v3

    .line 321
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/netease/download/list/PatchListCore;->start()I

    move-result v0

    const/4 v1, 0x3

    :goto_0
    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5217\u8868\u6587\u4ef6\u91cd\u65b0\u4e0b\u8f7d,\u8fd8\u6709"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21\u91cd\u8bd5\u673a\u4f1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PatchListCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    .line 332
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/lvsip/Lvsip;->clean()V

    .line 333
    invoke-virtual {p0}, Lcom/netease/download/list/PatchListCore;->start()I

    move-result v0

    goto :goto_0

    .line 335
    :cond_0
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

    .line 44
    invoke-virtual {p0}, Lcom/netease/download/list/PatchListCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/netease/download/list/PatchListCore;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/netease/download/list/PatchListCore;->mUrlPath:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/netease/download/list/PatchListCore;->mMd5:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/netease/download/list/PatchListCore;->mFilePath:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/netease/download/list/PatchListCore;->mFileName:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/netease/download/list/PatchListCore;->mFileId:Ljava/lang/String;

    return-void
.end method

.method public start()I
    .locals 29

    move-object/from16 v0, p0

    .line 67
    iget-object v1, v0, Lcom/netease/download/list/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v2, "state"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, v0, Lcom/netease/download/list/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v3, "filetype"

    const-string v4, "Other"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v1

    iget-object v4, v0, Lcom/netease/download/list/PatchListCore;->mUrlPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/dns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5217\u8868\u6587\u4ef6\u505aDNS\u89e3\u6790\uff0cDNS\u7ed3\u679c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PatchListCore"

    invoke-static {v5, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 74
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v17

    const-string v13, "__DOWNLOAD_DNS_RESOLVED__"

    const-string v14, "__DOWNLOAD_DNS_RESOLVED__"

    invoke-virtual/range {v7 .. v17}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v18

    const/16 v19, 0xb

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v28

    const-string v24, "__DOWNLOAD_DNS_RESOLVED__"

    const-string v25, "__DOWNLOAD_DNS_RESOLVED__"

    invoke-virtual/range {v18 .. v28}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v4, 0xb

    const-string v6, "PatchListCore has port, final ip ="

    const-string v7, ":"

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v9, v8

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/download/dns/DnsParams$Unit;

    .line 86
    iget-object v10, v9, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 87
    iget-object v9, v9, Lcom/netease/download/dns/DnsParams$Unit;->port:Ljava/lang/String;

    .line 89
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 91
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object v11, v0, Lcom/netease/download/list/PatchListCore;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/netease/download/list/PatchListCore;->mUrlPath:Ljava/lang/String;

    invoke-direct {v0, v11, v12, v4}, Lcom/netease/download/list/PatchListCore;->downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 95
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadConfig result1="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_2

    .line 101
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "downloadConfig result2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_1

    goto :goto_1

    :cond_5
    move-object v9, v8

    :cond_6
    :goto_1
    if-eqz v4, :cond_10

    const-string v1, "\u91c7\u7528lvsip"

    .line 110
    invoke-static {v1}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/lvsip/Lvsip;->isCteateIp()Z

    move-result v1

    if-nez v1, :cond_e

    .line 113
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/config/ConfigParams;->getLvsipArray()[Ljava/lang/String;

    move-result-object v8

    :cond_7
    if-eqz v8, :cond_8

    .line 115
    array-length v1, v8

    if-gtz v1, :cond_d

    .line 117
    :cond_8
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v1

    const-string v8, "1"

    .line 118
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "2"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    const-string v8, "0"

    .line 121
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "-1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    .line 125
    :cond_a
    sget-object v8, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    goto :goto_4

    .line 122
    :cond_b
    :goto_2
    sget-object v8, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    goto :goto_4

    .line 119
    :cond_c
    :goto_3
    sget-object v8, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    .line 128
    :cond_d
    :goto_4
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/netease/download/lvsip/Lvsip;->init([Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/lvsip/Lvsip;->createLvsip()V

    .line 132
    :cond_e
    :goto_5
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/lvsip/Lvsip;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v4, :cond_10

    .line 133
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/lvsip/Lvsip;->getNewIpFromArray()Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5217\u8868\u8bf7\u6c42\u73af\u8282--\u91c7\u7528lvsip\uff0c\u5c06\u8981\u4f7f\u7528\u7684ip="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 142
    iget-object v4, v0, Lcom/netease/download/list/PatchListCore;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/netease/download/list/PatchListCore;->mUrlPath:Ljava/lang/String;

    invoke-direct {v0, v4, v8, v1}, Lcom/netease/download/list/PatchListCore;->downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    .line 147
    :cond_10
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/netease/download/list/PatchListCore;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5217\u8868\u8bf7\u6c42\u73af\u8282--\u4e34\u65f6\u6587\u4ef6\u662f\u5426\u5b58\u5728="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mFilePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "CFG"

    if-nez v4, :cond_11

    .line 150
    iget-object v7, v0, Lcom/netease/download/list/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v8, "finish"

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, v0, Lcom/netease/download/list/PatchListCore;->mLogData:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v2

    if-nez v2, :cond_12

    .line 154
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/netease/download/list/PatchListCore;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "\u5217\u8868\u8bf7\u6c42\u73af\u8282--\u4e0b\u8f7d\u6210\u529f\uff0c\u547d\u540d\u4e3a\u6b63\u5f0f\u6587\u4ef6"

    .line 157
    invoke-static {v5, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_6

    .line 163
    :cond_11
    iget-object v7, v0, Lcom/netease/download/list/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v8, "error"

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, v0, Lcom/netease/download/list/PatchListCore;->mLogData:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v2

    if-nez v2, :cond_12

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "\u5217\u8868\u8bf7\u6c42\u73af\u8282--\u4e0b\u8f7d\u5931\u8d25\uff0c\u5220\u9664\u4e34\u65f6\u6587\u4ef6"

    .line 168
    invoke-static {v5, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_12
    :goto_6
    return v4
.end method
