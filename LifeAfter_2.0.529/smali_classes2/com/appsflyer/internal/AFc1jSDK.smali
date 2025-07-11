.class public final Lcom/appsflyer/internal/AFc1jSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public AFInAppEventType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public AFKeystoreWrapper:Landroid/content/Intent;

.field public AFLogger:J

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/appsflyer/internal/AFd1nSDK;

.field public unregisterClient:[Ljava/lang/String;

.field public valueOf:Lcom/appsflyer/deeplink/DeepLinkListener;

.field public values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1jSDK;->d:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    return-void
.end method

.method private static AFInAppEventType(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling onAppOpenAttribution with:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 274
    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onAppOpenAttribution(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private valueOf(Ljava/lang/Object;Ljava/util/Iterator;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 176
    :goto_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    .line 179
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    return-object v1

    .line 189
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "recursiveSearch error"

    .line 192
    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private valueOf(Landroid/content/Intent;Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;)Z
    .locals 8

    const-string v0, "android.intent.action.VIEW"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4208
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4209
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 91
    :goto_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1jSDK;->AFKeystoreWrapper:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 5208
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5209
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez p1, :cond_2

    const-string v3, "Could not extract deeplink from null intent"

    .line 6140
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 6143
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 6144
    iget-object v4, p0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    if-nez v3, :cond_3

    goto :goto_4

    .line 6147
    :cond_3
    iget-object v4, p0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_5

    :goto_2
    move-object v6, v1

    goto :goto_3

    .line 6163
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 6164
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    .line 6167
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_2

    .line 6171
    :cond_7
    invoke-direct {p0, v7, v6}, Lcom/appsflyer/internal/AFc1jSDK;->valueOf(Ljava/lang/Object;Ljava/util/Iterator;)Landroid/net/Uri;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_4

    .line 6150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found deeplink in push payload at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v1, "payloadKey"

    .line 6151
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Ljava/util/List;

    const-string v4, ""

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7069
    iget-object v5, p3, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v5}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7079
    iget-object v1, p3, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    if-eqz v1, :cond_8

    iget-object v3, p3, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v1, v3}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf(Ljava/util/Map;)V

    :cond_8
    move-object v1, v6

    :cond_9
    :goto_4
    const/4 v3, 0x1

    const-string v4, " w/af_consumed"

    const/4 v5, 0x0

    const-string v6, "af_consumed"

    if-eqz v2, :cond_b

    .line 94
    new-instance v0, Lcom/appsflyer/internal/AFi1jSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFi1jSDK;-><init>(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {v0, v6}, Lcom/appsflyer/internal/AFi1jSDK;->valueOf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5}, Lcom/appsflyer/internal/AFi1jSDK;->AFInAppEventParameterName(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, p2, p3, v2}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;)V

    return v3

    .line 100
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v5

    :cond_b
    if-eqz v0, :cond_d

    .line 107
    new-instance p1, Lcom/appsflyer/internal/AFi1jSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1jSDK;->AFKeystoreWrapper:Landroid/content/Intent;

    invoke-direct {p1, v1}, Lcom/appsflyer/internal/AFi1jSDK;-><init>(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p1, v6}, Lcom/appsflyer/internal/AFi1jSDK;->valueOf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v6, v1, v2}, Lcom/appsflyer/internal/AFi1jSDK;->AFInAppEventParameterName(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, p2, p3, v0}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;)V

    return v3

    .line 113
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed trampoline deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v5

    :cond_d
    if-eqz v1, :cond_f

    .line 119
    new-instance v0, Lcom/appsflyer/internal/AFi1jSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFi1jSDK;-><init>(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {v0, v6}, Lcom/appsflyer/internal/AFi1jSDK;->valueOf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5}, Lcom/appsflyer/internal/AFi1jSDK;->AFInAppEventParameterName(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, p2, p3, v1}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;)V

    return v3

    .line 125
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed deep link from push: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v5

    :cond_f
    const-string p1, "No deep link detected"

    .line 131
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return v5
.end method

.method private static values(Ljava/lang/String;)V
    .locals 3

    .line 282
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "Calling onAppOpenAttributionFailure with: "

    .line 285
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 286
    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onAttributionFailure(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;)V
    .locals 2

    .line 79
    new-instance v0, Lcom/appsflyer/internal/AFf1oSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1jSDK;->d:Ljava/util/List;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/appsflyer/internal/AFf1oSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;Ljava/util/List;)V

    .line 80
    iget-object p1, p0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object p1

    .line 4089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {p3, p1, v0}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1jSDK;->AFKeystoreWrapper:Landroid/content/Intent;

    return-void
.end method

.method public final AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling onDeepLinking with:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/deeplink/DeepLinkListener;

    invoke-interface {v0, p1}, Lcom/appsflyer/deeplink/DeepLinkListener;->onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 265
    :cond_0
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v1, "skipping, no callback registered"

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-void
.end method

.method public final AFInAppEventType(Lcom/appsflyer/internal/AFc1oSDK;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    check-cast v0, Lcom/appsflyer/internal/AFd1kSDK;

    if-eqz p3, :cond_0

    .line 1124
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    if-eqz p3, :cond_0

    .line 2019
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 63
    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lcom/appsflyer/internal/AFc1jSDK;->valueOf(Landroid/content/Intent;Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;)Z

    move-result p1

    const-string p2, "ddl_sent"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    .line 65
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p1

    .line 2164
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 p3, 0x0

    const-string v0, "appsFlyerCount"

    invoke-interface {p1, v0, p3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    .line 66
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 67
    new-instance p1, Lcom/appsflyer/internal/AFc1qSDK;

    iget-object p3, p0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {p1, p3}, Lcom/appsflyer/internal/AFc1qSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 68
    iget-object p3, p0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object p3

    new-instance v0, Lcom/appsflyer/internal/AFf1nSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFf1nSDK;-><init>(Lcom/appsflyer/internal/AFc1qSDK;)V

    .line 3089
    iget-object p1, p3, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v1, p3, v0}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    return-void
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 244
    :try_start_0
    invoke-static {p1}, Lcom/appsflyer/deeplink/DeepLink;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/deeplink/DeepLink;

    move-result-object p1

    .line 7140
    iget-object v1, p1, Lcom/appsflyer/deeplink/DeepLink;->valueOf:Lorg/json/JSONObject;

    const-string v2, "is_deferred"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, p1, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 246
    :try_start_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v3, "Error occurred"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 247
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, p1}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 250
    throw p1

    .line 252
    :cond_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Ljava/util/Map;)V

    return-void
.end method

.method public final values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Error occurred: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 233
    new-instance p1, Lcom/appsflyer/deeplink/DeepLinkResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    return-void

    .line 235
    :cond_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;)V

    return-void
.end method
