.class public Lcom/netease/ntunisdk/SdkFacebookAd;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkFacebookAd.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "facebook"

.field private static final METHOD_FETCH_DEFERRED_APPLINK_DATA:Ljava/lang/String; = "fetchDeferredAppLinkData"

.field private static final NO_CHNL_METHOD_CMP_ON_UPDATE_CONSENT:Ljava/lang/String; = "cmpOnUpdateConsent"

.field private static final NO_CHNL_METHOD_ON_PROTOCOL_LIST_CHANGED_CB:Ljava/lang/String; = "onProtocolListChangedCallback"

.field private static final TAG:Ljava/lang/String; = "SdkFacebookAd"

.field private static final VER:Ljava/lang/String; = "15.1.0"

.field private static final sMethodSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNoChnlMethodWLSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/SdkFacebookAd;->sMethodSet:Ljava/util/Set;

    .line 40
    sget-object v0, Lcom/netease/ntunisdk/SdkFacebookAd;->sMethodSet:Ljava/util/Set;

    const-string v1, "fetchDeferredAppLinkData"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/netease/ntunisdk/SdkFacebookAd;->sMethodSet:Ljava/util/Set;

    const-string v1, "cmpOnUpdateConsent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/netease/ntunisdk/SdkFacebookAd;->sMethodSet:Ljava/util/Set;

    const-string v2, "onProtocolListChangedCallback"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/SdkFacebookAd;->sNoChnlMethodWLSet:Ljava/util/Set;

    .line 44
    sget-object v0, Lcom/netease/ntunisdk/SdkFacebookAd;->sNoChnlMethodWLSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/netease/ntunisdk/SdkFacebookAd;->sNoChnlMethodWLSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkFacebookAd;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkFacebookAd;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "INNER_MODE_ADVERTISING_CHANNEL"

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkFacebookAd;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkFacebookAd;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebookAd;->bundle2jsonstr(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bundle2jsonstr(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .line 243
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 244
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 245
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cmpOnUpdateConsent(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "SdkFacebookAd"

    const-string v1, "calling cmpOnUpdateConsent..."

    .line 212
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notInEEA"

    .line 213
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "calling setAutoLogAppEventsEnabled(true)..."

    if-eqz p1, :cond_0

    .line 215
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->setAutoLogAppEventsEnabled(Z)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v3, "NT_CMP_CONSENT_VENDOR_LIST"

    invoke-interface {p1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "s7"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->setAutoLogAppEventsEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "calling setAutoLogAppEventsEnabled(false)..."

    .line 223
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 224
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setAutoLogAppEventsEnabled(Z)V

    :goto_0
    return-void
.end method

.method private onProtocolListChangedCallback(Lorg/json/JSONObject;)V
    .locals 2

    const-string p1, "SdkFacebookAd"

    const-string v0, "calling onProtocolListChangedCallback..."

    .line 230
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "DISAGREED_PROTOCOLS"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_promotion"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "disagree event_promotion, calling setAutoLogAppEventsEnabled(false)..."

    .line 233
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 234
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setAutoLogAppEventsEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "agree event_promotion, calling setAutoLogAppEventsEnabled(true)..."

    .line 236
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 237
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setAutoLogAppEventsEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setLDU()V
    .locals 4

    .line 114
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ENABLE_LDU"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "SdkFacebookAd"

    if-eqz v0, :cond_1

    const-string v0, "ENABLE_LDU\uff1atrue"

    .line 116
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "LDU"

    aput-object v1, v0, v2

    .line 117
    invoke-static {v0, v2, v2}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    const-string v0, "ENABLE_LDU\uff1afalse"

    .line 119
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    .line 120
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 7

    const-string v0, "respMsg"

    const-string v1, "respCode"

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendFunc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdkFacebookAd"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, ""

    .line 130
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "methodId"

    .line 131
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "channel"

    .line 132
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netease/ntunisdk/SdkFacebookAd;->sNoChnlMethodWLSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "facebook"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string p1, "not for this?"

    .line 135
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "cmpOnUpdateConsent"

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-direct {p0, v5}, Lcom/netease/ntunisdk/SdkFacebookAd;->cmpOnUpdateConsent(Lorg/json/JSONObject;)V

    return-void

    :cond_3
    const-string v2, "onProtocolListChangedCallback"

    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    invoke-direct {p0, v5}, Lcom/netease/ntunisdk/SdkFacebookAd;->onProtocolListChangedCallback(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    const-string v2, "fetchDeferredAppLinkData"

    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 150
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkFacebookAd;->setLDU()V

    .line 151
    invoke-static {v2}, Lcom/facebook/FacebookSdk;->setAutoInitEnabled(Z)V

    .line 152
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    .line 154
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebookAd;->myCtx:Landroid/content/Context;

    new-instance v2, Lcom/netease/ntunisdk/SdkFacebookAd$1;

    invoke-direct {v2, p0, v5}, Lcom/netease/ntunisdk/SdkFacebookAd$1;-><init>(Lcom/netease/ntunisdk/SdkFacebookAd;Lorg/json/JSONObject;)V

    invoke-static {p1, v2}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    goto :goto_1

    .line 189
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 190
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "methodId not exist"

    .line 191
    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebookAd;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v5, v2

    .line 199
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extendFunc JSONException:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x2710

    .line 202
    :try_start_2
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebookAd;->extendFuncCall(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_6
    :goto_1
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "15.1.0"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "15.1.0(3)"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 0

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

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
