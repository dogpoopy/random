.class public Lcom/netease/ntunisdk/base/model/SdkInit;
.super Lcom/netease/ntunisdk/base/model/SdkState;
.source "SdkInit.java"


# instance fields
.field public appchannel:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public gameid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fromJson(Lorg/json/JSONObject;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;->fromJson(Lorg/json/JSONObject;)V

    const-string v0, "appid"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->appid:Ljava/lang/String;

    const-string v0, "appchannel"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->appchannel:Ljava/lang/String;

    const-string v0, "gameid"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->gameid:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/netease/ntunisdk/base/model/SdkState;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "appid"

    .line 34
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appchannel"

    .line 35
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->appchannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameid"

    .line 36
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public wrapFrom(Ljava/lang/Object;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;->wrapFrom(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "APPID"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->appid:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->appchannel:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GAMEID"

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkInit;->gameid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public wrapTo()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/netease/ntunisdk/base/model/SdkState;->wrapTo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
