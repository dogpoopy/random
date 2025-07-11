.class public Lcom/netease/ntunisdk/extend/NetworkCardManager;
.super Ljava/lang/Object;
.source "NetworkCardManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;
    }
.end annotation


# static fields
.field private static final METHODIS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetworkCardManager"


# instance fields
.field private volatile mobileNetwork:Landroid/net/Network;

.field private mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private volatile wifiNetwork:Landroid/net/Network;

.field private wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "monitorNetworkCardState"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bindNetworkCard"

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->METHODIS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileNetwork:Landroid/net/Network;

    .line 33
    iput-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiNetwork:Landroid/net/Network;

    return-void
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/extend/NetworkCardManager;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/extend/NetworkCardManager;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->callbackNetworkCardState(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/extend/NetworkCardManager;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/extend/NetworkCardManager;ILandroid/net/Network;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->handleBindNetworkCard(ILandroid/net/Network;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    return-void
.end method

.method private bindNetworkCard(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 10

    const-string v0, "NetworkCardManager"

    .line 90
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindNetworkCard extendFunc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, ""

    .line 91
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fd"

    const/4 v3, -0x1

    .line 92
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 93
    sget-object v2, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->DEFAULT:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    const-string v3, "wwan"

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    sget-object v2, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->MOBILE:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    :cond_0
    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    const-string v3, "wlan"

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    sget-object v2, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->WIFI:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    goto :goto_0

    .line 99
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-gez v6, :cond_2

    goto :goto_2

    .line 104
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    move-object v4, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    .line 105
    invoke-direct/range {v4 .. v9}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->startBindNetworkCard(Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;ILorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    goto :goto_4

    .line 100
    :cond_3
    :goto_2
    sget-object p3, Lcom/netease/ntunisdk/ExtendCode;->PARAM_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p1, p3}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 101
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    :try_start_1
    const-string v1, "result"

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindNetworkCard return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindNetworkCard extendFuncCall Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bindNetworkCard Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void
.end method

.method private callbackNetworkCardState(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "NetworkCardManager"

    .line 241
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackNetworkCardState, json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v1, "methodId"

    const-string v2, "monitorNetworkCardState"

    .line 248
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wwan"

    .line 249
    iget-object v2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileNetwork:Landroid/net/Network;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "wlan"

    .line 250
    iget-object v2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiNetwork:Landroid/net/Network;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackNetworkCardState return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 253
    sget-object v1, Lcom/netease/ntunisdk/ExtendCode;->SUCCESS:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p2, v1}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 254
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackNetworkCardState Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private closeNetworkCardListener(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 3

    const-string v0, "NetworkCardManager"

    .line 343
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeNetworkCardListener extendFunc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "connectivity"

    .line 344
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 345
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_1

    .line 346
    iget-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 347
    iget-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 348
    iput-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 349
    iget-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileNetwork:Landroid/net/Network;

    if-eqz p2, :cond_0

    .line 350
    iput-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileNetwork:Landroid/net/Network;

    .line 353
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p2, :cond_1

    .line 354
    iget-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 355
    iput-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 356
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiNetwork:Landroid/net/Network;

    if-eqz p1, :cond_1

    .line 357
    iput-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiNetwork:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeNetworkCardListener Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private directBindMobileNetworkCard(ILcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 8

    .line 368
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "connectivity"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/ConnectivityManager;

    .line 369
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 370
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 371
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 372
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 374
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    .line 377
    new-instance v7, Lcom/netease/ntunisdk/extend/NetworkCardManager$3;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/extend/NetworkCardManager$3;-><init>(Lcom/netease/ntunisdk/extend/NetworkCardManager;ILcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Landroid/net/ConnectivityManager;)V

    .line 402
    invoke-virtual {p4, v6, v7}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private directBindWifiNetworkCard(ILcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 8

    .line 408
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "connectivity"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/ConnectivityManager;

    .line 409
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 410
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 411
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 412
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 414
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    .line 417
    new-instance v7, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/extend/NetworkCardManager$4;-><init>(Lcom/netease/ntunisdk/extend/NetworkCardManager;ILcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Landroid/net/ConnectivityManager;)V

    .line 442
    invoke-virtual {p4, v6, v7}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private handleBindNetworkCard(ILandroid/net/Network;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "handleBindNetworkCard return: "

    const-string v1, "result"

    const-string v2, "NetworkCardManager"

    const/4 v3, 0x0

    .line 316
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBindNetworkCard: network is not null. start bind , json: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 320
    const-class v5, Ljava/io/FileDescriptor;

    const-string v6, "setInt$"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 321
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v3

    .line 322
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p2, v4}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 324
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object p1, Lcom/netease/ntunisdk/ExtendCode;->SUCCESS:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p4, p1}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 327
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 330
    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p4, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object p2, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p4, p2}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 333
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 335
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "handleBindNetworkCard extendFuncCall Exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleBindNetworkCard Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private openNetworkCardStateListener(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 3

    const-string v0, "NetworkCardManager"

    .line 79
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openNetworkCardStateListener extendFunc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 81
    invoke-direct {p0, p3, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->startNetworkCardStateListener(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "openNetworkCardStateListener Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private readNetworkCardState(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "NetworkCardManager"

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "result"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_0

    const-string v1, "success"

    .line 226
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->callbackNetworkCardState(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    const-string p1, "readNetworkCardState: Initialized"

    .line 228
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "failed"

    .line 230
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->callbackNetworkCardState(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    const-string p1, "readNetworkCardState: Not Initialized"

    .line 232
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readNetworkCardState Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startBindNetworkCard(Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;ILorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 8

    const-string v0, "startBindNetworkCard return: "

    const-string v1, "startBindNetworkCard Exception: "

    const-string v2, "result"

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBindNetworkCard: networkType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkCardManager"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 267
    :try_start_0
    sget-object v6, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->DEFAULT:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    .line 268
    sget-object v7, Lcom/netease/ntunisdk/extend/NetworkCardManager$5;->$SwitchMap$com$netease$ntunisdk$extend$NetworkCardManager$NetworkType:[I

    invoke-virtual {p1}, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->ordinal()I

    move-result p1

    aget p1, v7, p1

    const/4 v7, 0x1

    if-eq p1, v7, :cond_1

    const/4 v7, 0x2

    if-eq p1, v7, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    sget-object v6, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->WIFI:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    .line 275
    iget-object v3, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiNetwork:Landroid/net/Network;

    goto :goto_0

    .line 270
    :cond_1
    sget-object v6, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->MOBILE:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    .line 271
    iget-object v3, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileNetwork:Landroid/net/Network;

    :goto_0
    if-eqz v3, :cond_2

    .line 281
    invoke-direct {p0, p2, v3, p4, p3}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->handleBindNetworkCard(ILandroid/net/Network;Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p1, :cond_4

    const-string p1, "startBindNetworkCard: not init, force bind"

    .line 284
    invoke-static {v4, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object p1, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->MOBILE:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    if-ne v6, p1, :cond_3

    .line 286
    invoke-direct {p0, p2, p4, p3, p5}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->directBindMobileNetworkCard(ILcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 287
    :cond_3
    sget-object p1, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->WIFI:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    if-ne v6, p1, :cond_5

    .line 288
    invoke-direct {p0, p2, p4, p3, p5}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->directBindWifiNetworkCard(ILcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_4
    const-string p1, "startBindNetworkCard: network is null"

    .line 291
    invoke-static {v4, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object p1, Lcom/netease/ntunisdk/ExtendCode;->SUCCESS:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p3, p1}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 295
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 300
    :try_start_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object p2, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p3, p2}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 303
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 305
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private startNetworkCardStateListener(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 8

    const-string v0, "NetworkCardManager"

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_1

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 145
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 146
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v3, 0xf

    .line 147
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v4, 0xd

    .line 148
    invoke-virtual {v1, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v5, 0x1

    .line 149
    invoke-virtual {v1, v5}, Landroid/net/NetworkRequest$Builder;->removeTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v6, 0x0

    .line 150
    invoke-virtual {v1, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 153
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 154
    invoke-virtual {v7, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 155
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 156
    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v6}, Landroid/net/NetworkRequest$Builder;->removeTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 158
    invoke-virtual {v2, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 161
    new-instance v3, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;

    invoke-direct {v3, p0, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager$1;-><init>(Lcom/netease/ntunisdk/extend/NetworkCardManager;Lcom/netease/ntunisdk/base/SdkBase;)V

    iput-object v3, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 187
    iget-object v3, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->mobileRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 189
    new-instance v1, Lcom/netease/ntunisdk/extend/NetworkCardManager$2;

    invoke-direct {v1, p0, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager$2;-><init>(Lcom/netease/ntunisdk/extend/NetworkCardManager;Lcom/netease/ntunisdk/base/SdkBase;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 214
    iget-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->wifiRequestCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v2, p2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_1
    const-string p1, "startNetworkCardStateListener: Initialized"

    .line 216
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkCardStateListener Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "monitorNetworkCardState"

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "switch"

    .line 58
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "action"

    .line 59
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->openNetworkCardStateListener(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    invoke-direct {p0, p2, p4}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->closeNetworkCardListener(Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, "readState"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    invoke-direct {p0, p3, p2}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->readNetworkCardState(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 67
    :cond_2
    sget-object p1, Lcom/netease/ntunisdk/ExtendCode;->PARAM_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 68
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "bindNetworkCard"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/ntunisdk/extend/NetworkCardManager;->bindNetworkCard(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getMethodIds()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager;->METHODIS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 0

    return-void
.end method
