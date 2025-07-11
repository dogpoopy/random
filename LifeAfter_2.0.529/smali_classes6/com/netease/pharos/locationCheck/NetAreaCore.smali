.class public Lcom/netease/pharos/locationCheck/NetAreaCore;
.super Ljava/lang/Object;
.source "NetAreaCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetAreaCore"

.field private static sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;


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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/netease/pharos/locationCheck/NetAreaCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/locationCheck/NetAreaCore$1;-><init>(Lcom/netease/pharos/locationCheck/NetAreaCore;)V

    iput-object v0, p0, Lcom/netease/pharos/locationCheck/NetAreaCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/locationCheck/NetAreaCore;
    .locals 2

    .line 98
    sget-object v0, Lcom/netease/pharos/locationCheck/NetAreaCore;->sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;

    if-nez v0, :cond_1

    .line 99
    const-class v0, Lcom/netease/pharos/locationCheck/NetAreaCore;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/netease/pharos/locationCheck/NetAreaCore;->sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/netease/pharos/locationCheck/NetAreaCore;

    invoke-direct {v1}, Lcom/netease/pharos/locationCheck/NetAreaCore;-><init>()V

    sput-object v1, Lcom/netease/pharos/locationCheck/NetAreaCore;->sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/locationCheck/NetAreaCore;->sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;

    return-object v0
.end method


# virtual methods
.method public start()I
    .locals 7

    .line 111
    invoke-static {}, Lcom/netease/pharos/ServerProxy;->getInstance()Lcom/netease/pharos/ServerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/ServerProxy;->getNetAreaUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/netease/pharos/util/Util;->getUpperVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "all"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 111
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetAreaCore [start] \u666e\u901a\u8bf7\u6c42\u7ed3\u679c decision="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/PharosProxy;->getmDecision()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetAreaCore"

    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmDecision()I

    move-result v2

    if-ne v5, v2, :cond_0

    .line 117
    invoke-static {}, Lcom/netease/pharos/ServerProxy;->getInstance()Lcom/netease/pharos/ServerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/ServerProxy;->getNetAreaUrl()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/netease/pharos/util/Util;->getUpperVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getProjectId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 117
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/pharos/util/Storage;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "last_net_decision_config.txt"

    invoke-static {v2, v6}, Lcom/netease/pharos/util/Util;->getFileMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 125
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetAreaCore [start] checkLocal md5="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileMd5:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isNeedDownloadFile:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :cond_3
    if-eqz v2, :cond_4

    .line 129
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/pharos/util/Storage;->clearTag(Ljava/lang/String;)Z

    .line 132
    :cond_4
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    invoke-static {v0}, Lcom/netease/pharos/util/Util;->getDecisionTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setmDecisionTag(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/netease/pharos/locationCheck/NetAreaCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetAreaCore [start] \u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetAreaCore [start] \u666e\u901a\u8bf7\u6c42\u7ed3\u679c DeviceInfo.getInstances().getmProbeRegion()="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getmProbeRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_5

    if-nez v2, :cond_9

    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u83b7\u53d6\u5931\u8d25\uff0c\u91c7\u7528\u4e0a\u4e00\u6b21\u6570\u636e"

    .line 139
    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "NetAreaCore [start] \u65e0\u9700\u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868\uff0c\u91c7\u7528\u4e0a\u4e00\u6b21\u6570\u636e"

    .line 141
    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 143
    :goto_0
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getLastNetDecisionConfigContent()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u4e0a\u4e00\u6b21\u6570\u636e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->init(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v1, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u4e0a\u4e00\u6b21\u6570\u636e \u8bfb\u53d6\u5931\u8d25\uff0c\u91c7\u7528\u9ed8\u8ba4\u6570\u636e"

    .line 150
    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getDefaultNetDecisionConfigContent()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u9ed8\u8ba4\u6570\u636e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->init(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v1, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u9ed8\u8ba4\u6570\u636e \u8bfb\u53d6\u5931\u8d25"

    .line 158
    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868"

    .line 168
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Pharos] Config Refresh url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetAreaCore"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Host"

    .line 180
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/Storage;->getInstance()Lcom/netease/pharos/util/Storage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/pharos/util/Storage;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "If-None-Match"

    .line 185
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetAreaCore [header] etag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 189
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    :try_start_0
    const-string v1, "GET"

    .line 191
    iget-object v2, p0, Lcom/netease/pharos/locationCheck/NetAreaCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    invoke-static {p1, p2, v1, v0, v2}, Lcom/netease/pharos/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    const/16 p1, 0xb

    .line 197
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u7ed3\u679c="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    return p1
.end method
