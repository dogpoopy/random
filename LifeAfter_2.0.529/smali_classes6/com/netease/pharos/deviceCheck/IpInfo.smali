.class public Lcom/netease/pharos/deviceCheck/IpInfo;
.super Ljava/lang/Object;
.source "IpInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpInfo"

.field private static sIpInfo:Lcom/netease/pharos/deviceCheck/IpInfo;


# instance fields
.field private mIp_addr:Ljava/lang/String;

.field private mIp_continent:Ljava/lang/String;

.field private mIp_country:Ljava/lang/String;

.field private mIp_payload:Ljava/lang/String;

.field private mIp_province:Ljava/lang/String;

.field private mIp_sig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 102
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_addr:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_continent:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_country:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_province:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_payload:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_sig:Ljava/lang/String;

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceCheck/IpInfo;
    .locals 2

    .line 30
    sget-object v0, Lcom/netease/pharos/deviceCheck/IpInfo;->sIpInfo:Lcom/netease/pharos/deviceCheck/IpInfo;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/netease/pharos/deviceCheck/IpInfo;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/netease/pharos/deviceCheck/IpInfo;->sIpInfo:Lcom/netease/pharos/deviceCheck/IpInfo;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/netease/pharos/deviceCheck/IpInfo;

    invoke-direct {v1}, Lcom/netease/pharos/deviceCheck/IpInfo;-><init>()V

    sput-object v1, Lcom/netease/pharos/deviceCheck/IpInfo;->sIpInfo:Lcom/netease/pharos/deviceCheck/IpInfo;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/deviceCheck/IpInfo;->sIpInfo:Lcom/netease/pharos/deviceCheck/IpInfo;

    return-object v0
.end method


# virtual methods
.method public getmIp_addr()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_continent()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_continent:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_country()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_country:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_payload()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_payload:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_province()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_province:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_sig()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_sig:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 11

    const-string v0, "sig"

    const-string v1, "continent"

    const-string v2, "country"

    const-string v3, "subdivisions"

    const-string v4, "ip"

    const-string v5, "payload"

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u89e3\u6790\u5185\u5bb9---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "IpInfo"

    invoke-static {v7, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 46
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v8

    .line 48
    :goto_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V

    .line 50
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v8

    :goto_1
    iput-object v4, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_addr:Ljava/lang/String;

    .line 56
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "en"

    const-string v10, "names"

    if-eqz v4, :cond_2

    .line 57
    :try_start_2
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 59
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_province:Ljava/lang/String;

    .line 68
    :cond_2
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_country:Ljava/lang/String;

    .line 80
    :cond_3
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_continent:Ljava/lang/String;

    .line 92
    :cond_4
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_payload:Ljava/lang/String;

    .line 93
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_5
    iput-object v8, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_sig:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e3\u6790\u5185\u5bb9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public setmIp_addr(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_addr:Ljava/lang/String;

    return-void
.end method

.method public setmIp_continent(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_continent:Ljava/lang/String;

    return-void
.end method

.method public setmIp_country(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_country:Ljava/lang/String;

    return-void
.end method

.method public setmIp_payload(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_payload:Ljava/lang/String;

    return-void
.end method

.method public setmIp_province(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_province:Ljava/lang/String;

    return-void
.end method

.method public setmIp_sig(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_sig:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "mIp_addr="

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp_continent="

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_continent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp_country="

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp_province="

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_province:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp_payload="

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_payload:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp_sig="

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/deviceCheck/IpInfo;->mIp_sig:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
