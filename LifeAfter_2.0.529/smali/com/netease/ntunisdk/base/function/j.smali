.class public final Lcom/netease/ntunisdk/base/function/j;
.super Ljava/lang/Object;
.source "LoginProtocol.java"


# direct methods
.method public static a(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 4

    const-string v0, "login"

    const-string v1, "SHOW_PROTOCOL_IN_LOGIN"

    .line 13
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "login protocol: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoginProtocol"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 17
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "showProtocolInLogin"

    .line 18
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "src"

    .line 19
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 20
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getLoginUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PROTOCOL_IN_LOGIN_SRC"

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 30
    :cond_0
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/base/function/b;->a(Lcom/netease/ntunisdk/base/SdkBase;I)V

    return-void
.end method
