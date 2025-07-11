.class public Lcom/netease/pharos/netlag/NetworkCheckConfig;
.super Ljava/lang/Object;
.source "NetworkCheckConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;
    }
.end annotation


# instance fields
.field private mArea:Ljava/lang/String;

.field mIpInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLagID:Ljava/lang/String;

.field private mLagPks:I

.field private mLagString:Ljava/lang/String;

.field private mLagTimeout:I

.field private mLogOpen:Z

.field private mMethodId:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mRetryCount:I

.field private mRetryInterval:I

.field private mTestLog:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagID:Ljava/lang/String;

    const/16 v1, 0xa

    .line 41
    iput v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagPks:I

    const/16 v1, 0x3e8

    .line 42
    iput v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagTimeout:I

    const-string v1, "#PHAROS#"

    .line 43
    iput-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagString:Ljava/lang/String;

    const-string v1, "udp"

    .line 44
    iput-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mProtocol:Ljava/lang/String;

    const/4 v1, 0x1

    .line 45
    iput v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mRetryCount:I

    const/16 v1, 0x1e

    .line 46
    iput v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mRetryInterval:I

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLogOpen:Z

    const-string v1, "0"

    .line 48
    iput-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mArea:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mTestLog:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mMethodId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mArea:Ljava/lang/String;

    return-object v0
.end method

.method public getLagID()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagID:Ljava/lang/String;

    return-object v0
.end method

.method public getLagPks()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagPks:I

    return v0
.end method

.method public getLagString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagString:Ljava/lang/String;

    return-object v0
.end method

.method public getLagTimeout()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagTimeout:I

    return v0
.end method

.method public getProject()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mProject:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mRetryCount:I

    return v0
.end method

.method public getRetryInterval()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mRetryInterval:I

    return v0
.end method

.method public getTestLog()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mTestLog:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "project"

    const-string v1, ""

    .line 118
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mProject:Ljava/lang/String;

    const-string v0, "methodId"

    .line 119
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mMethodId:Ljava/lang/String;

    const-string v0, "lag_id"

    .line 120
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagID:Ljava/lang/String;

    const-string v0, "lag_pks"

    const/16 v1, 0xa

    .line 121
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagPks:I

    const-string v0, "lag_string"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagString:Ljava/lang/String;

    const-string v0, "protocol"

    const-string v1, "udp"

    .line 123
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mProtocol:Ljava/lang/String;

    const-string v0, "counter"

    const/4 v1, 0x1

    .line 124
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mRetryCount:I

    const-string v0, "interval"

    const/16 v2, 0x1e

    .line 125
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mRetryInterval:I

    const-string v0, "lag_timeout"

    .line 126
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLagTimeout:I

    .line 127
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v0

    const-string v1, "logopen"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLogOpen:Z

    .line 128
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->setIsShowLog(Z)V

    const-string v0, "area"

    const-string v1, "0"

    .line 129
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mArea:Ljava/lang/String;

    const-string v0, "testlog"

    .line 130
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mTestLog:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mIpInfos:Ljava/util/ArrayList;

    const-string v0, "server"

    .line 132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 138
    invoke-static {v1, v2}, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->access$000(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mIpInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mMethodId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mMethodId:Ljava/lang/String;

    const-string v0, "pharosnetlag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mProject:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mIpInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Error Parameters: ip is empty!!!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Error Parameters: project is null!!!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Parameters: methodId is not equal pharosnetlag. current methodId is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public isLogOpen()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLogOpen:Z

    return v0
.end method

.method public setLogOpen(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mLogOpen:Z

    return-void
.end method
