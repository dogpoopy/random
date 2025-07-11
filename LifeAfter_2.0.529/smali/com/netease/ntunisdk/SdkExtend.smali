.class public Lcom/netease/ntunisdk/SdkExtend;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkExtend.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "extend"

.field private static final SDK_VERSION:Ljava/lang/String; = "1.1.3"

.field private static final TAG:Ljava/lang/String; = "SdkExtend"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkExtend;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkExtend;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 6

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkExtend"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 129
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "methodId"

    .line 130
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "channel"

    .line 132
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    invoke-virtual {v4, v3, v2, p0, v5}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 144
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extendFunc JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "respCode"

    .line 149
    sget-object v1, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ExtendCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "respMsg"

    .line 150
    sget-object v1, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ExtendCode;->getDescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkExtend;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkExtend"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 163
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "methodId"

    .line 164
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "channel"

    .line 166
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v2

    iget-object v6, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    move-object v5, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 178
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendFunc JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 182
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "respCode"

    .line 183
    sget-object v0, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ExtendCode;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "respMsg"

    .line 184
    sget-object v0, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ExtendCode;->getDescribe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkExtend;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "extend"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 59
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkExtend;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 68
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkExtend;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.3"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 2

    const-string v0, "FEATURE_HAS_SHARE"

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkExtend;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "SdkExtend"

    const-string v1, "init..."

    .line 41
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->init(Lcom/netease/ntunisdk/base/SdkBase;)V

    .line 43
    invoke-static {}, Lcom/netease/ntunisdk/extend/HotspotInfo;->getInstance()Lcom/netease/ntunisdk/extend/HotspotInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/extend/HotspotInfo;->registerReceiver(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->getInstance()Lcom/netease/ntunisdk/extend/NetworkCardInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/extend/NetworkCardInfo;->setSdkExtend(Lcom/netease/ntunisdk/SdkExtend;)V

    const/4 v0, 0x0

    .line 45
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "UIN"

    const-string v1, "SdkExtendUid"

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkExtend;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SESSION"

    const-string v1, "SdkExtendSession"

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkExtend;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkExtend;->setPropInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkExtend;->loginDone(I)V

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 202
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    return-void
.end method

.method public sdkOnCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 212
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->init(Landroid/content/Context;)V

    .line 213
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 214
    sput-boolean p1, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->isDebug:Z

    return-void
.end method

.method public sdkOnRestart()V
    .locals 0

    .line 101
    invoke-static {}, Lcom/netease/ntunisdk/ExtendStartupRecord;->onRestart()V

    return-void
.end method

.method public sdkOnResume()V
    .locals 2

    .line 95
    invoke-static {}, Lcom/netease/ntunisdk/ExtendStartupRecord;->rewrite()V

    .line 96
    invoke-static {}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkExtend;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    return-void
.end method

.method protected specialShareChannel(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;
    .locals 1

    .line 194
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result p1

    const/16 v0, 0x134

    if-ne p1, v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkExtend;->getChannel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
