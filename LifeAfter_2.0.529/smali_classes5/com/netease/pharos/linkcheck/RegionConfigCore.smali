.class public Lcom/netease/pharos/linkcheck/RegionConfigCore;
.super Ljava/lang/Object;
.source "RegionConfigCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionConfigCore"


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
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/netease/pharos/linkcheck/RegionConfigCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/RegionConfigCore$1;-><init>(Lcom/netease/pharos/linkcheck/RegionConfigCore;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public start()I
    .locals 6

    const-string v0, "last_region_local_config.txt"

    .line 99
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    .line 102
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/netease/pharos/util/Storage;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/PharosProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/netease/pharos/util/Util;->getFileMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 112
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/netease/pharos/util/Storage;->clearTag(Ljava/lang/String;)Z

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/netease/pharos/linkcheck/RegionConfigCore;->start(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegionConfigCore [dealer]  isNeedDownloadFile ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegionConfigCore"

    invoke-static {v4, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4

    if-nez v2, :cond_6

    :cond_4
    if-eqz v1, :cond_5

    const-string v2, "RegionConfigCore [start] \u83b7\u53d6\u5931\u8d25\uff0c\u91c7\u7528\u4e0a\u4e00\u6b21\u6570\u636e"

    .line 118
    invoke-static {v2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "RegionConfigCore [start] \u65e0\u9700\u4e0b\u8f7d\uff0c\u91c7\u7528\u4e0a\u4e00\u6b21\u6570\u636e"

    .line 120
    invoke-static {v2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 122
    :goto_1
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 124
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/pharos/util/Util;->file2Info(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegionConfigCore [dealer] [processContent]  \u94fe\u8def\u63a2\u6d4b\u6a21\u5757---\u672c\u5730\u914d\u7f6e\u6587\u4ef6---\u89e3\u6790\u7ed3\u679c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 128
    :try_start_1
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->init(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->parse()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/16 v1, 0x12

    :cond_6
    :goto_2
    return v1
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    const-string v0, "RegionConfigCore [dealer] [processContent]  \u94fe\u8def\u63a2\u6d4b\u6a21\u5757---\u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6"

    .line 141
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0xb

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Host-Type"

    .line 152
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Host"

    .line 153
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p3, :cond_2

    .line 157
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/pharos/util/Storage;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "If-None-Match"

    .line 159
    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegionConfigCore [header] etag:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 164
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    :try_start_0
    const-string p3, "GET"

    .line 166
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    invoke-static {p1, p2, p3, v1, v2}, Lcom/netease/pharos/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RegionConfigCore [dealer] [processContent]  \u63a2\u6d4b\u7528\u6237\u8bbe\u5907\u7684\u57fa\u672c\u4fe1\u606f---\u7ed3\u679c="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    return v0
.end method
