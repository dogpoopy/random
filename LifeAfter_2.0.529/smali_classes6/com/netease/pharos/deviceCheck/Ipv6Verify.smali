.class public Lcom/netease/pharos/deviceCheck/Ipv6Verify;
.super Ljava/lang/Object;
.source "Ipv6Verify.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "whoami6"

.field private static final WHOAMI6_URL_MAINLAND:Ljava/lang/String; = "https://who6.nie.netease.com"

.field private static final WHOAMI6_URL_OVERSEA:Ljava/lang/String; = "https://who6.nie.easebar.com"

.field private static instance:Lcom/netease/pharos/deviceCheck/Ipv6Verify;


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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/netease/pharos/deviceCheck/Ipv6Verify$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/deviceCheck/Ipv6Verify$1;-><init>(Lcom/netease/pharos/deviceCheck/Ipv6Verify;)V

    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/deviceCheck/Ipv6Verify;
    .locals 2

    .line 81
    sget-object v0, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->instance:Lcom/netease/pharos/deviceCheck/Ipv6Verify;

    if-nez v0, :cond_1

    .line 82
    const-class v0, Lcom/netease/pharos/deviceCheck/Ipv6Verify;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->instance:Lcom/netease/pharos/deviceCheck/Ipv6Verify;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/netease/pharos/deviceCheck/Ipv6Verify;

    invoke-direct {v1}, Lcom/netease/pharos/deviceCheck/Ipv6Verify;-><init>()V

    sput-object v1, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->instance:Lcom/netease/pharos/deviceCheck/Ipv6Verify;

    .line 86
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 88
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->instance:Lcom/netease/pharos/deviceCheck/Ipv6Verify;

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "[pharos] who6 response: %s"

    .line 126
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "whoami6"

    invoke-static {v3, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ipv6"

    const-string v4, ""

    .line 131
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[pharos] who6 parse--> ipv6:%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 132
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setIpaddrV6(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()I
    .locals 5

    .line 93
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://who6.nie.easebar.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://who6.nie.netease.com"

    .line 96
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "unknown"

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v4, "[pharos] request who6#%s, %s"

    .line 99
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "whoami6"

    invoke-static {v4, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0, v0, v2}, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "[pharos] result who6 %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "[pharos] start Ipv6Verify"

    .line 106
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-AUTH-PRODUCT"

    const-string v2, "impression"

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-IPDB-LOCALE"

    const-string v2, "en"

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Host"

    .line 112
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :try_start_0
    const-string v1, "GET"

    .line 116
    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->dealer:Lcom/netease/pharos/network/NetworkDealer;

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

    .line 118
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const/16 p1, 0xb

    .line 121
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[pharos] finish Ipv6Verify---result="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    return p1
.end method
