.class public Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;
.super Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;
.source "AuthPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;->returnResult(I)V

    return-void
.end method

.method private returnResult(I)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;->getCallback()Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;->mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    iget-object v1, v1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    invoke-static {p1, v1, p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    sget v0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_FAILED:I

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;->returnResult(I)V

    return-void

    :cond_0
    const-string v1, "decoded_data"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    sget v0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_FAILED:I

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;->returnResult(I)V

    return-void

    .line 33
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    const-string v4, "openAuthLogin"

    .line 34
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin$1;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin$1;-><init>(Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->setAuthCallback(Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;)V

    .line 46
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    sget v0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_FAILED:I

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;->returnResult(I)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    const-class v0, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEndNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeedSuccessBeforeExecute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
