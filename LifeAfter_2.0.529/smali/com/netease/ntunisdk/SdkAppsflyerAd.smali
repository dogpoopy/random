.class public Lcom/netease/ntunisdk/SdkAppsflyerAd;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkAppsflyerAd.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "appsflyer"

.field private static final METHOD_DISABLE_ACCESS_DATA:Ljava/lang/String; = "disableAccessData"

.field private static final METHOD_GENERATE_ONELINK:Ljava/lang/String; = "generateOneLink"

.field private static final METHOD_SET_CONSENT_DATA:Ljava/lang/String; = "setConsentData"

.field private static final METHOD_SET_SHARING_FILTER:Ljava/lang/String; = "setSharingFilterForPartners"

.field private static final METHOD_VALIDATE_LOG_PURCHASE:Ljava/lang/String; = "validateAndLogInAppPurchase"

.field private static final NO_CHNL_METHOD_CMP_ON_UPDATE_CONSENT:Ljava/lang/String; = "cmpOnUpdateConsent"

.field private static final NO_CHNL_METHOD_ON_PROTOCOL_LIST_CHANGED_CB:Ljava/lang/String; = "onProtocolListChangedCallback"

.field private static final TAG:Ljava/lang/String; = "SdkAppsflyerAd"

.field private static final VER:Ljava/lang/String; = "6.13.0"

.field private static final sNoChnlMethodWLSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private disableAccessDataCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->sNoChnlMethodWLSet:Ljava/util/Set;

    .line 49
    sget-object v0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->sNoChnlMethodWLSet:Ljava/util/Set;

    const-string v1, "cmpOnUpdateConsent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->sNoChnlMethodWLSet:Ljava/util/Set;

    const-string v1, "onProtocolListChangedCallback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->disableAccessDataCalled:Z

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkAppsflyerAd;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkAppsflyerAd;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "INNER_MODE_ADVERTISING_CHANNEL"

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkAppsflyerAd;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method private generateOneLink(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "onelinkTemplateId"

    .line 245
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "SdkAppsflyerAd"

    const-string v0, "onelinkTemplateId is empty"

    .line 247
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerLib;->setAppInviteOneLink(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/share/ShareInviteHelper;->generateInviteUrl(Landroid/content/Context;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    const-string v1, "linkParams"

    .line 252
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 256
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 258
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/appsflyer/share/LinkGenerator;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    goto :goto_0

    :cond_1
    const-string v1, "linkCampaign"

    .line 262
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    invoke-virtual {v0, v1}, Lcom/appsflyer/share/LinkGenerator;->setCampaign(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    :cond_2
    const-string v1, "linkChannel"

    .line 267
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 269
    invoke-virtual {v0, v1}, Lcom/appsflyer/share/LinkGenerator;->setChannel(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 272
    :cond_3
    new-instance v1, Lcom/netease/ntunisdk/SdkAppsflyerAd$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkAppsflyerAd$2;-><init>(Lcom/netease/ntunisdk/SdkAppsflyerAd;Lorg/json/JSONObject;)V

    .line 304
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/appsflyer/share/LinkGenerator;->generateLink(Landroid/content/Context;Lcom/appsflyer/share/LinkGenerator$ResponseListener;)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 14

    const-string v0, ","

    const-string v1, "respMsg"

    const-string v2, "respCode"

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extendFunc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SdkAppsflyerAd"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    .line 132
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "methodId"

    .line 133
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "channel"

    .line 134
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/netease/ntunisdk/SdkAppsflyerAd;->sNoChnlMethodWLSet:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "appsflyer"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const-string v0, "invalid channel"

    .line 137
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v7, "generateOneLink"

    .line 141
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 142
    invoke-direct {p0, v5}, Lcom/netease/ntunisdk/SdkAppsflyerAd;->generateOneLink(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_3
    const-string v7, "setSharingFilterForPartners"

    .line 144
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    const-string v6, "partners"

    .line 145
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v0, v6}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "validateAndLogInAppPurchase"

    .line 153
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v6, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    new-instance v7, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;

    invoke-direct {v7, p0, v5}, Lcom/netease/ntunisdk/SdkAppsflyerAd$1;-><init>(Lcom/netease/ntunisdk/SdkAppsflyerAd;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v6, v7}, Lcom/appsflyer/AppsFlyerLib;->registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V

    const-string v0, "publicKey"

    .line 177
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "signature"

    .line 178
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "originalJson"

    .line 179
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "price"

    .line 180
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "currency"

    .line 181
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "additionalParameters"

    .line 182
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    .line 189
    invoke-static {v0}, Lcom/netease/advertSdk/base/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/advertSdk/base/JsonUtils;->obj2str(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 183
    invoke-virtual/range {v6 .. v13}, Lcom/appsflyer/AppsFlyerLib;->validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "disableAccessData"

    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->disableAccessDataCalled:Z

    if-nez v0, :cond_b

    .line 193
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v5, "GP_MINOR_STATUS"

    const/4 v6, -0x1

    invoke-interface {v0, v5, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 194
    new-instance v5, Lcom/netease/advertSdk/AfData;

    invoke-direct {v5}, Lcom/netease/advertSdk/AfData;-><init>()V

    .line 195
    invoke-virtual {v5, v8}, Lcom/netease/advertSdk/AfData;->setDisableGaid(Z)V

    .line 196
    invoke-virtual {v5, v0}, Lcom/netease/advertSdk/AfData;->setMinorStatus(I)V

    .line 197
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/netease/advertSdk/SdkAppsflyer;->_appsflyerInit(Landroid/content/Context;Lcom/netease/advertSdk/AfData;)V

    .line 198
    iput-boolean v8, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->disableAccessDataCalled:Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "setConsentData"

    .line 200
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "calling setConsentData..."

    .line 201
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/netease/advertSdk/AfData;

    invoke-direct {v0}, Lcom/netease/advertSdk/AfData;-><init>()V

    .line 203
    invoke-virtual {v0, v8}, Lcom/netease/advertSdk/AfData;->setGameDma(Z)V

    .line 204
    invoke-virtual {v0, v5}, Lcom/netease/advertSdk/AfData;->setJsonObj(Lorg/json/JSONObject;)V

    .line 205
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/netease/advertSdk/SdkAppsflyer;->_appsflyerInit(Landroid/content/Context;Lcom/netease/advertSdk/AfData;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "cmpOnUpdateConsent"

    .line 206
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "calling cmpOnUpdateConsent..."

    .line 207
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v0, Lcom/netease/advertSdk/AfData;

    invoke-direct {v0}, Lcom/netease/advertSdk/AfData;-><init>()V

    .line 209
    invoke-virtual {v0, v8}, Lcom/netease/advertSdk/AfData;->setCmp(Z)V

    .line 210
    invoke-virtual {v0, v5}, Lcom/netease/advertSdk/AfData;->setJsonObj(Lorg/json/JSONObject;)V

    .line 211
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/netease/advertSdk/SdkAppsflyer;->_appsflyerInit(Landroid/content/Context;Lcom/netease/advertSdk/AfData;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "onProtocolListChangedCallback"

    .line 212
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "calling onProtocolListChangedCallback..."

    .line 213
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v6, "DISAGREED_PROTOCOLS"

    invoke-interface {v0, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "disagreedProtocol"

    .line 215
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    new-instance v0, Lcom/netease/advertSdk/AfData;

    invoke-direct {v0}, Lcom/netease/advertSdk/AfData;-><init>()V

    .line 217
    invoke-virtual {v0, v8}, Lcom/netease/advertSdk/AfData;->setKoreaProtocolLauncher(Z)V

    .line 218
    invoke-virtual {v0, v5}, Lcom/netease/advertSdk/AfData;->setJsonObj(Lorg/json/JSONObject;)V

    .line 219
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/netease/advertSdk/SdkAppsflyer;->_appsflyerInit(Landroid/content/Context;Lcom/netease/advertSdk/AfData;)V

    goto :goto_0

    .line 221
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 222
    invoke-virtual {v5, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "methodId not exist"

    .line 223
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkAppsflyerAd;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extendFunc JSONException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 234
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2710

    .line 235
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow error:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkAppsflyerAd;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_b
    :goto_0
    return-void
.end method

.method protected gameLoginSuccess()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/netease/advertSdk/Utils;->disableAccessData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->disableAccessDataCalled:Z

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "GP_MINOR_STATUS"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 119
    new-instance v1, Lcom/netease/advertSdk/AfData;

    invoke-direct {v1}, Lcom/netease/advertSdk/AfData;-><init>()V

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v1, v2}, Lcom/netease/advertSdk/AfData;->setDisableGaid(Z)V

    .line 121
    invoke-virtual {v1, v0}, Lcom/netease/advertSdk/AfData;->setMinorStatus(I)V

    .line 122
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->myCtx:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/advertSdk/SdkAppsflyer;->_appsflyerInit(Landroid/content/Context;Lcom/netease/advertSdk/AfData;)V

    .line 123
    iput-boolean v2, p0, Lcom/netease/ntunisdk/SdkAppsflyerAd;->disableAccessDataCalled:Z

    :cond_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "appsflyer"

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

    const-string v0, "6.13.0"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.13.0(4)"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
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
