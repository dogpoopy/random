.class public Lcom/netease/advertSdk/SdkAppsflyer;
.super Ljava/lang/Object;
.source "SdkAppsflyer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkAppsflyer"

.field private static ctx:Landroid/content/Context;

.field private static currencyCode:Ljava/lang/String;

.field private static devKey:Ljava/lang/String;

.field private static gaidReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _appsflyerInit(Landroid/content/Context;Lcom/netease/advertSdk/AfData;)V
    .locals 9

    const-string v0, "SdkAppsflyer"

    const-string v1, "_appsflyerInit..."

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v1, Lcom/netease/advertSdk/SdkAppsflyer$1;

    invoke-direct {v1, p0}, Lcom/netease/advertSdk/SdkAppsflyer$1;-><init>(Landroid/content/Context;)V

    const-string v2, "begin af init..."

    .line 316
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "APPSFLYER_DEV_KEY"

    .line 317
    invoke-static {v2}, Lcom/netease/advertSdk/Utils;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3, v2, v1, p0}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    const-string v1, "DEBUG_MODE"

    .line 320
    invoke-static {v1}, Lcom/netease/advertSdk/Utils;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDebug="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1"

    .line 322
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "set debug mode"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog(Z)V

    :cond_0
    const-string v1, "INIT_NOT_CUID"

    .line 327
    invoke-static {v1}, Lcom/netease/advertSdk/Utils;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, "set cuid"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/netease/advertSdk/Utils;->isGaidMust()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerLib;->waitForCustomerUserId(Z)V

    .line 332
    invoke-static {v3}, Lcom/netease/advertSdk/Utils;->getUnisdkDeviceId(Z)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "use gaid"

    .line 334
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v1, p0}, Lcom/appsflyer/AppsFlyerLib;->setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 337
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/netease/advertSdk/SdkAppsflyer$2;

    invoke-direct {v4, p0}, Lcom/netease/advertSdk/SdkAppsflyer$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 354
    :cond_2
    invoke-static {v2}, Lcom/netease/advertSdk/Utils;->getUnisdkDeviceId(Z)Ljava/lang/String;

    move-result-object v1

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use adId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v1, p0}, Lcom/appsflyer/AppsFlyerLib;->setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V

    :cond_3
    :goto_0
    const-string v1, "PRE_INSTALL_ATTRIBUTION"

    .line 360
    invoke-static {v1}, Lcom/netease/advertSdk/Utils;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ","

    .line 362
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 363
    array-length v4, v1

    if-lez v4, :cond_6

    .line 364
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 367
    array-length v5, v1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "null"

    if-ne v5, v6, :cond_4

    .line 368
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 369
    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 370
    :cond_4
    array-length v5, v1

    if-ne v5, v7, :cond_5

    .line 371
    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string v5, ""

    .line 373
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaSource|campaign|siteId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v8}, Lcom/appsflyer/AppsFlyerLib;->setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_f

    .line 379
    invoke-virtual {p1}, Lcom/netease/advertSdk/AfData;->isDisableGaid()Z

    move-result v1

    .line 380
    invoke-virtual {p1}, Lcom/netease/advertSdk/AfData;->getMinorStatus()I

    move-result v4

    if-eqz v1, :cond_8

    const/16 v1, 0x66

    if-ne v4, v1, :cond_7

    .line 383
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setDisableAdvertisingIdentifiers(Z)V

    goto :goto_2

    .line 385
    :cond_7
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerLib;->setDisableAdvertisingIdentifiers(Z)V

    .line 389
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/netease/advertSdk/AfData;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    .line 391
    invoke-virtual {p1}, Lcom/netease/advertSdk/AfData;->isCmp()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "notInEEA"

    .line 393
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "calling anonymizeUser(false)..."

    if-eqz v4, :cond_9

    .line 395
    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/appsflyer/AppsFlyerLib;->enableTCFDataCollection(Z)V

    .line 397
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    goto :goto_3

    .line 399
    :cond_9
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/appsflyer/AppsFlyerLib;->enableTCFDataCollection(Z)V

    .line 400
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    const-string v6, "NT_CMP_CONSENT_VENDOR_LIST"

    invoke-interface {v4, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "s660"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 402
    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    goto :goto_3

    :cond_a
    const-string v4, "calling anonymizeUser(true)..."

    .line 405
    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    .line 411
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/netease/advertSdk/AfData;->isKoreaProtocolLauncher()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "disagreedProtocol"

    .line 413
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_promotion"

    .line 414
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v2, "disagree event_promotion, calling anonymizeUser(true)..."

    .line 415
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    goto :goto_4

    :cond_c
    const-string v3, "agree event_promotion, calling anonymizeUser(false)..."

    .line 418
    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    .line 423
    :cond_d
    :goto_4
    invoke-virtual {p1}, Lcom/netease/advertSdk/AfData;->isGameDma()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "nonGDPRUser"

    .line 425
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "consentDataUsage"

    .line 426
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "consentAdsPersonalization"

    .line 427
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "anonymizeUser"

    .line 428
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz p1, :cond_e

    .line 430
    invoke-static {}, Lcom/appsflyer/AppsFlyerConsent;->forNonGDPRUser()Lcom/appsflyer/AppsFlyerConsent;

    move-result-object p1

    .line 431
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V

    .line 433
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    goto :goto_5

    .line 435
    :cond_e
    invoke-static {v0, v2}, Lcom/appsflyer/AppsFlyerConsent;->forGDPRUser(ZZ)Lcom/appsflyer/AppsFlyerConsent;

    move-result-object p1

    .line 436
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V

    .line 438
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    .line 443
    :cond_f
    :goto_5
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    return-void
.end method

.method public static appsFlyerInit(Landroid/app/Application;)V
    .locals 2

    const-string v0, "SdkAppsflyer"

    const-string v1, "SdkAppsflyer [appsFlyerInit]"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, "SdkAppsflyer [appsFlyerInit] context is null"

    .line 242
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 248
    invoke-static {p0}, Lcom/netease/advertSdk/Utils;->readNtunisdkConfig(Landroid/content/Context;)V

    const-string v1, "appsflyer_data"

    .line 249
    invoke-static {p0, v1}, Lcom/netease/advertSdk/Utils;->readConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->init(Landroid/content/Context;)V

    .line 252
    invoke-static {}, Lcom/netease/advertSdk/Utils;->disableAccessData()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/netease/advertSdk/Utils;->hasCmp()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/netease/advertSdk/Utils;->isGameDMA()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/netease/advertSdk/Utils;->isKoreaProtocolLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "init on application"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 257
    invoke-static {p0, v0}, Lcom/netease/advertSdk/SdkAppsflyer;->_appsflyerInit(Landroid/content/Context;Lcom/netease/advertSdk/AfData;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "don\'t init on application"

    .line 254
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static appsflyerInit(Landroid/app/Application;)V
    .locals 0

    .line 234
    invoke-static {p0}, Lcom/netease/advertSdk/SdkAppsflyer;->appsFlyerInit(Landroid/app/Application;)V

    return-void
.end method

.method public static handleCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "partnerId"

    const-string v1, "SdkAppsflyer"

    const-string v2, "SdkAppsflyer [handleCustomEvent]"

    .line 172
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "eventName is null"

    .line 175
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_0
    sget-object v2, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string p0, "ctx is null"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "stopTracking"

    .line 184
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    const/4 p1, 0x1

    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/appsflyer/AppsFlyerLib;->stop(ZLandroid/content/Context;)V

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {p1}, Lcom/netease/advertSdk/base/JsonUtils;->isJson(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "setPartnerData"

    .line 196
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 197
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-static {v1}, Lcom/netease/advertSdk/base/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/appsflyer/AppsFlyerLib;->setPartnerData(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 201
    :cond_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Lcom/netease/advertSdk/base/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_5
    const-string p0, "eventValue is not json"

    .line 207
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static handleCustomerUserId(Ljava/lang/String;)V
    .locals 1

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SdkAppsflyer"

    const-string v0, "userId is null"

    .line 159
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static handleDeepLink()V
    .locals 2

    const-string v0, "SdkAppsflyer"

    const-string v1, "sendDeepLinkData is deprecated"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static handleLevel(Ljava/lang/String;)V
    .locals 3

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SdkAppsflyer"

    if-eqz v0, :cond_0

    const-string p0, "level is null"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, "ctx is null"

    .line 127
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "af_level"

    .line 133
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    sget-object v1, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const-string v2, "af_level_achieved"

    invoke-virtual {p0, v1, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static handleLogin(Ljava/lang/String;)V
    .locals 3

    .line 99
    sget-object p0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "SdkAppsflyer"

    const-string v0, "ctx is null"

    .line 100
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "af_login"

    invoke-virtual {p0, v0, v2, v1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static handlePurchase(Ljava/lang/String;)V
    .locals 3

    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SdkAppsflyer"

    if-eqz v0, :cond_0

    const-string p0, "money is null"

    .line 143
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, "ctx is null"

    .line 148
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "af_revenue"

    .line 153
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    sget-object v1, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const-string v2, "af_purchase"

    invoke-virtual {p0, v1, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static handleRegister(Ljava/lang/String;)V
    .locals 3

    .line 107
    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const-string v1, "SdkAppsflyer"

    if-nez v0, :cond_0

    const-string p0, "ctx is null"

    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "af_registration_method"

    .line 115
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    sget-object v1, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    const-string v2, "af_complete_registration"

    invoke-virtual {p0, v1, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SdkAppsflyer"

    const-string v1, "appsflyer init!"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sput-object p1, Lcom/netease/advertSdk/SdkAppsflyer;->devKey:Ljava/lang/String;

    .line 49
    sput-object p0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    .line 50
    sput-object p2, Lcom/netease/advertSdk/SdkAppsflyer;->currencyCode:Ljava/lang/String;

    .line 52
    sget-object p1, Lcom/netease/advertSdk/SdkAppsflyer;->devKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "devKey is null"

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_0
    sget-object p1, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    if-nez p1, :cond_1

    const-string p0, "ctx is null"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string p2, "AppUserId"

    invoke-virtual {p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afUid = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", afAppUserId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object p2

    const-string v0, "APPSFLYER_UID"

    invoke-virtual {p2, v0, p0}, Lcom/netease/advertSdk/base/AdvertMgr;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object p2

    const-string v1, "APPSFLYER_APP_USER_ID"

    invoke-virtual {p2, v1, p1}, Lcom/netease/advertSdk/base/AdvertMgr;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2, v0, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCollectIMEI(Z)V

    .line 90
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCollectAndroidID(Z)V

    .line 92
    sget-object p0, Lcom/netease/advertSdk/SdkAppsflyer;->currencyCode:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 93
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    sget-object p1, Lcom/netease/advertSdk/SdkAppsflyer;->currencyCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCurrencyCode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static onPause()V
    .locals 1

    .line 221
    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 215
    sget-object v0, Lcom/netease/advertSdk/SdkAppsflyer;->ctx:Landroid/content/Context;

    return-void
.end method
