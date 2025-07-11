.class final Lcom/netease/ntunisdk/base/SdkBase$141;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntGameLoginSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 5775
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$141;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "gameLoginSuccess"

    .line 5778
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$141;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SdkBase;->u(Lcom/netease/ntunisdk/base/SdkBase;)V

    .line 5779
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$141;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SdkBase;->s(Lcom/netease/ntunisdk/base/SdkBase;)V

    .line 5781
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$141;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v2, "UNI_SAUTH_FALLBACK"

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$141;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v2, "OVERSEA_PROJECT"

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5784
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$141;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->t(Lcom/netease/ntunisdk/base/SdkBase;)V

    return-void

    .line 6035
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    const-string v2, "SHOW_PROTOCOL_IN_LOGIN"

    .line 6036
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    .line 6038
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gameLoginSuccess protocol: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LoginProtocol"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 6042
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    const-string v4, "showProtocolInLogin"

    .line 6043
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "src"

    .line 6044
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uid"

    .line 6045
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getLoginUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "PROTOCOL_IN_LOGIN_SRC"

    .line 6047
    invoke-virtual {v1, v3, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 6049
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 6061
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/function/a;->a()V

    return-void
.end method
