.class public Lcom/netease/pharos/qos/HighSpeedListCore;
.super Ljava/lang/Object;
.source "HighSpeedListCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighSpeedListCore"


# instance fields
.field private checkHighSpeedListCore:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

.field private final dealer:Lcom/netease/pharos/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network/NetworkDealer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldSwitch2HttpDns:Z

.field private mStatus:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    .line 47
    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->checkHighSpeedListCore:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    .line 48
    new-instance v0, Lcom/netease/pharos/qos/HighSpeedListCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/qos/HighSpeedListCore$1;-><init>(Lcom/netease/pharos/qos/HighSpeedListCore;)V

    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    .line 107
    iput-boolean v1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mShouldSwitch2HttpDns:Z

    return-void
.end method

.method static synthetic access$002(Lcom/netease/pharos/qos/HighSpeedListCore;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/netease/pharos/qos/HighSpeedListCore;)I
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/netease/pharos/qos/HighSpeedListCore;->parse()I

    move-result p0

    return p0
.end method

.method private parse()I
    .locals 8

    const-string v0, "HighSpeedListCore"

    const-string v1, "HighSpeedListCore [harbor\u6a21\u5757] [parse] start"

    .line 110
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 113
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/PharosProxy;->getmIp()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/PharosProxy;->getmPorts()Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_0

    .line 116
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 117
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->getmPort()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v4, "HighSpeedListCore [harbor\u6a21\u5757] [parse] \u83b7\u53d6\u9ad8\u901f\u5217\u8868---\u89e3\u6790\u7ed3\u679c \u4f7f\u7528\u5355\u7aef\u53e3\u65b9\u5f0f"

    .line 120
    invoke-static {v0, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 122
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HighSpeedListCore [parameters cost]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 126
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HighSpeedListCore \u83b7\u53d6\u9ad8\u901f\u5217\u8868---\u89e3\u6790\u7ed3\u679c \u7aef\u53e3\u5217\u8868="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListInfo;->getInstance()Lcom/netease/pharos/qos/HighSpeedListInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/netease/pharos/qos/HighSpeedListInfo;->parse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HighSpeedListCore [query cost]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->checkHighSpeedListCore:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-virtual {v1, v3}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->setData(Lorg/json/JSONObject;)V

    .line 132
    iget-object v1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->checkHighSpeedListCore:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-virtual {v1}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->start()I

    move-result v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighSpeedListCore \u83b7\u53d6\u9ad8\u901f\u5217\u8868---\u89e3\u6790\u7ed3\u679c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    const-string v2, "HighSpeedListCore \u83b7\u53d6\u9ad8\u901f\u5217\u8868---\u89e3\u6790\u7ed3\u679c, ip \u6216\u8005 port \u4e3a\u7a7a"

    .line 137
    invoke-static {v0, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method private start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "HighSpeedListCore [start] \u83b7\u53d6\u9ad8\u901f\u5217\u8868"

    .line 270
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 273
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Host"

    .line 276
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/pharos/util/Storage;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 280
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "If-None-Match"

    .line 281
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HighSpeedListCore [header] etag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 285
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v3, "HighSpeedListCore"

    const/16 v4, 0xb

    if-nez p2, :cond_2

    const/4 p2, 0x0

    :try_start_0
    const-string v5, "GET"

    .line 287
    iget-object v6, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    invoke-static {p1, p2, v5, v2, v6}, Lcom/netease/pharos/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HighSpeedListCore [start] IOException="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HighSpeedListCore [http parse cost]:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 293
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HighSpeedListCore [start] \u83b7\u53d6\u9ad8\u901f\u5217\u8868---\u7ed3\u679c="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    const-string p1, "HighSpeedListCore [start] \u83b7\u53d6\u9ad8\u901f\u5217\u8868\u5931\u8d25 \u8bbe\u4e3a\u5931\u8d25\u72b6\u6001"

    .line 295
    invoke-static {v3, p1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 296
    iput p1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    :cond_3
    return v4
.end method


# virtual methods
.method public clean()V
    .locals 2

    const-string v0, "HighSpeedListCore"

    const-string v1, "HighSpeedListCore [clean] start"

    .line 302
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    return-void
.end method

.method public declared-synchronized start()I
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "HighSpeedListCore"

    const-string v1, "HighSpeedListCore [harbor\u6a21\u5757] [start] start"

    .line 144
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "HighSpeedListCore"

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HighSpeedListCore [harbor\u6a21\u5757] [start] start mStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget v2, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const-string v0, "HighSpeedListCore"

    const-string v1, "HighSpeedListCore [harbor\u6a21\u5757] [start] already start"

    .line 150
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    monitor-exit p0

    return v4

    .line 154
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmIp()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->getmPorts()Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "HighSpeedListCore"

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HighSpeedListCore [harbor\u6a21\u5757] [start] \u83b7\u53d6\u9ad8\u901f\u5217\u8868  ip="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_1

    .line 160
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->getmPort()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HighSpeedListCore"

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HighSpeedListCore [harbor\u6a21\u5757] [start] \u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u7aef\u53e3\u5217\u8868="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v6, Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-direct {v6, v2, v5}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->checkHighSpeedListCore:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    goto :goto_0

    :cond_1
    const-string v6, "HighSpeedListCore"

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HighSpeedListCore [harbor\u6a21\u5757] [start] \u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u7aef\u53e3\u5217\u8868="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v6, Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-direct {v6, v2, v5}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    iput-object v6, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->checkHighSpeedListCore:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    :goto_0
    const-string v5, "HighSpeedListCore"

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HighSpeedListCore [harbor\u6a21\u5757] [start] mStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v5, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    const/16 v6, 0xb

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0xb

    goto :goto_2

    :cond_3
    :goto_1
    const-string v5, "HighSpeedListCore"

    const-string v8, "HighSpeedListCore [start] \u83b7\u53d6\u8fc7\u9ad8\u901f\u5217\u8868"

    .line 169
    invoke-static {v5, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/netease/pharos/qos/HighSpeedListCore;->parse()I

    move-result v5

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HighSpeedListCore [parse cost]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    const-string v8, "HighSpeedListCore"

    const-string v9, "HighSpeedListCore [start] \u83b7\u53d6\u9ad8\u901f\u5217\u8868\u5931\u8d25\uff0c\u5373\u5c06\u91cd\u65b0\u4e0b\u8f7d\u5217\u8868"

    .line 173
    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput v4, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    .line 175
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListInfo;->getInstance()Lcom/netease/pharos/qos/HighSpeedListInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/pharos/qos/HighSpeedListInfo;->clean()V

    goto :goto_2

    .line 177
    :cond_4
    iput v7, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    .line 180
    :goto_2
    iget v8, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    if-nez v8, :cond_11

    .line 181
    iput v3, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    .line 182
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->getmHighSpeedUrl()Ljava/lang/String;

    move-result-object v5

    const-string v8, "HighSpeedListCore"

    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HighSpeedListCore [harbor\u6a21\u5757] [start] param ip="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/pharos/PharosProxy;->getProjectId()Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v9

    .line 187
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 188
    iput-object v5, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    goto :goto_3

    .line 190
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_6

    .line 195
    :cond_6
    invoke-static {}, Lcom/netease/pharos/ServerProxy;->getInstance()Lcom/netease/pharos/ServerProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/ServerProxy;->getQosLightenUrl()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v4

    aput-object v9, v3, v7

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/netease/pharos/util/Storage;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 204
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "last_lighten_local_config.txt"

    invoke-static {v5, v8}, Lcom/netease/pharos/util/Util;->getFileMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    move v5, v4

    goto :goto_4

    :catchall_0
    move-exception v3

    .line 208
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v5, 0x1

    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    const-string v3, "HighSpeedListCore"

    const-string v4, "HighSpeedListCore [start] \u8fd8\u6ca1\u6709\u83b7\u53d6\u8fc7\u9ad8\u901f\u5217\u8868"

    .line 213
    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/pharos/util/Storage;->clearTag(Ljava/lang/String;)Z

    .line 215
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/pharos/util/Storage;->clearHash(Ljava/lang/String;)Z

    .line 217
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HighSpeedListCore [start] \u83b7\u53d6\u9ad8\u901f\u5217\u8868 ===> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/netease/pharos/qos/HighSpeedListCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "HighSpeedListCore"

    .line 219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_b

    .line 220
    iget-boolean v4, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mShouldSwitch2HttpDns:Z

    if-eqz v4, :cond_b

    const-string v4, "HighSpeedListCore"

    const-string v8, "\u4e0d\u652f\u6301HttpDNS"

    .line 221
    invoke-static {v4, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-nez v3, :cond_c

    if-nez v5, :cond_f

    :cond_c
    const-string v4, "HighSpeedListCore [start] \u83b7\u53d6\u672c\u5730\u9ad8\u901f\u5217\u8868"

    .line 225
    invoke-static {v4}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/PharosProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v3, "last_lighten_local_config.txt"

    .line 228
    invoke-virtual {v4, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/util/Util;->file2Infos(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 232
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 233
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListInfo;->getInstance()Lcom/netease/pharos/qos/HighSpeedListInfo;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/netease/pharos/qos/HighSpeedListInfo;->add(Ljava/lang/String;)V

    goto :goto_5

    .line 235
    :cond_d
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 238
    :cond_e
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListInfo;->getInstance()Lcom/netease/pharos/qos/HighSpeedListInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/netease/pharos/qos/HighSpeedListInfo;->addList(Ljava/util/List;)V

    .line 239
    iput v7, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStatus:I

    .line 240
    invoke-direct {p0}, Lcom/netease/pharos/qos/HighSpeedListCore;->parse()I

    move-result v2

    const-string v3, "HighSpeedListCore [parse ]:"

    .line 241
    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v6, v2

    goto :goto_7

    :cond_f
    move v6, v3

    goto :goto_7

    :cond_10
    :goto_6
    const/16 v0, 0xe

    :try_start_5
    const-string v1, "HighSpeedListCore"

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 [start] param error : projectId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", region="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    monitor-exit p0

    return v0

    :cond_11
    move v6, v5

    :catch_0
    :goto_7
    :try_start_6
    const-string v2, "HighSpeedListCore"

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u67e5\u8be2\u9ad8\u901f\u5217\u8868 code\u7ed3\u679c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_13

    const-string v2, "HighSpeedListCore"

    const-string v3, "HighSpeedListCore [start] \u8bf7\u6c42\u9ad8\u901f\u5217\u8868\u5931\u8d25\uff0c\u76f4\u63a5\u8fd4\u56de\u9ad8\u901f\u5217\u8868\u57fa\u7840\u7ed3\u679c"

    .line 251
    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 255
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 257
    invoke-virtual {v2, v3}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 258
    invoke-virtual {v2, v3}, Lcom/netease/pharos/PharosListener;->onPharosServer(Lorg/json/JSONObject;)V

    goto :goto_8

    :cond_12
    const-string v2, "HighSpeedListCore"

    const-string v3, "checkHighSpeedResult is null"

    .line 260
    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_13
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighSpeedListCore [finish cost]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/netease/pharos/qos/HighSpeedListCore;->clean()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 266
    monitor-exit p0

    return v6

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
