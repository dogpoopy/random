.class public Lcom/appsflyer/AppsFlyer2dXConversionCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;
.implements Lcom/appsflyer/deeplink/DeepLinkListener;
.implements Lcom/appsflyer/share/LinkGenerator$ResponseListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const-string v2, "failure"

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 68
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, -0x1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x52d9d3b6

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x3ea0a838

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onInstallConversionFailure"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "onAttributionFailure"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_3

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onAttributionFailureNative(Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 72
    :cond_4
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onInstallConversionFailureNative(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "2dx error"

    .line 80
    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public onAppOpenAttribution(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onAppOpenAttributionNative(Ljava/lang/Object;)V

    return-void
.end method

.method public native onAppOpenAttributionNative(Ljava/lang/Object;)V
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onInstallConversionFailure"

    .line 54
    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native onAttributionFailureNative(Ljava/lang/Object;)V
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onAttributionFailure"

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onInstallConversionDataLoadedNative(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onDeepLinkingNative(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    return-void
.end method

.method public native onDeepLinkingNative(Lcom/appsflyer/deeplink/DeepLinkResult;)V
.end method

.method public native onInstallConversionDataLoadedNative(Ljava/lang/Object;)V
.end method

.method public native onInstallConversionFailureNative(Ljava/lang/Object;)V
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onResponseNative(Ljava/lang/String;)V

    return-void
.end method

.method public onResponseError(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onResponseErrorNative(Ljava/lang/String;)V

    return-void
.end method

.method public native onResponseErrorNative(Ljava/lang/String;)V
.end method

.method public native onResponseNative(Ljava/lang/String;)V
.end method
