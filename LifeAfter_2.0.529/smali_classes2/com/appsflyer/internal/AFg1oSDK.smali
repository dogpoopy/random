.class public final Lcom/appsflyer/internal/AFg1oSDK;
.super Lcom/appsflyer/internal/AFf1tSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFf1tSDK<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final registerClient:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final afInfoLog:Lcom/appsflyer/internal/AFe1zSDK;

.field private afWarnLog:Ljava/lang/String;

.field private final force:Lcom/appsflyer/internal/AFd1rSDK;

.field private final i:Lcom/appsflyer/internal/AFd1xSDK;

.field private final v:Lcom/appsflyer/internal/AFg1bSDK;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "googleplay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "playstore"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "googleplaystore"

    aput-object v2, v0, v1

    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFg1oSDK;->registerClient:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 4

    .line 51
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->e:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1bSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GCD-FETCH"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFe1zSDK;

    .line 58
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFd1xSDK;

    .line 59
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    .line 60
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1oSDK;->force:Lcom/appsflyer/internal/AFd1rSDK;

    .line 62
    sget-object p1, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    .line 1101
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventParameterName:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object p1, Lcom/appsflyer/internal/AFe1bSDK;->w:Lcom/appsflyer/internal/AFe1bSDK;

    .line 2101
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventParameterName:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFe1cSDK;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "af_channel"

    const-string v1, "is_first_launch"

    const-string v2, "af_siteid"

    const-string v3, "[GCD-A03] Server retrieving attempt finished"

    .line 107
    iget-object v4, p0, Lcom/appsflyer/internal/AFf1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1zSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFg1zSDK;->valueOf()Z

    move-result v4

    if-nez v4, :cond_f

    .line 113
    sget-object v4, Lcom/appsflyer/internal/AFe1cSDK;->values:Lcom/appsflyer/internal/AFe1cSDK;

    const/4 v5, 0x0

    move-object v6, v4

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x2

    if-gt v4, v7, :cond_e

    const/4 v6, 0x1

    if-lt v4, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 117
    :goto_1
    iget-object v8, p0, Lcom/appsflyer/internal/AFg1oSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    .line 3190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/appsflyer/internal/AFg1bSDK;->v:J

    .line 119
    :try_start_0
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFe1cSDK;

    move-result-object v8

    .line 4107
    iget-object v9, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-nez v9, :cond_1

    goto/16 :goto_9

    .line 127
    :cond_1
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFe1pSDK;->getStatusCode()I

    move-result v10

    const/16 v11, 0x193

    if-eq v10, v11, :cond_3

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v11, 0x1

    .line 130
    :goto_3
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFe1pSDK;->isSuccessful()Z

    move-result v12

    const/16 v13, 0x194

    if-nez v12, :cond_6

    if-ne v10, v13, :cond_4

    goto :goto_7

    :cond_4
    if-nez v7, :cond_5

    if-nez v11, :cond_c

    goto :goto_5

    :goto_4
    move-object v6, v8

    goto/16 :goto_a

    :cond_5
    :goto_5
    const-string v6, "Error connection to server: "

    .line 145
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->values:Lcom/appsflyer/internal/AFe1cSDK;
    :try_end_0
    .catch Lcom/appsflyer/internal/AFf1ySDK; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_6
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    invoke-virtual {v1, v4}, Lcom/appsflyer/internal/AFg1bSDK;->values(I)V

    .line 165
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-object v0

    .line 4179
    :cond_6
    :goto_7
    :try_start_1
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFe1pSDK;->getBody()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 4180
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFe1pSDK;->getStatusCode()I

    move-result v9

    const-string v10, "iscache"

    .line 4182
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-ne v9, v13, :cond_7

    const-string v9, "error_reason"

    .line 4185
    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "status_code"

    .line 4186
    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "af_status"

    const-string v11, "Organic"

    .line 4187
    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "af_message"

    const-string v11, "organic install"

    .line 4188
    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v10, :cond_8

    .line 4190
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_8

    .line 4192
    iget-object v9, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v10, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    .line 4194
    :cond_8
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4195
    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4197
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "[Invite] Detected App-Invite via channel: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    const-string v9, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    new-array v6, v6, [Ljava/lang/Object;

    .line 4202
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v5

    .line 4200
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 4207
    :cond_a
    :goto_8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4210
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4211
    iget-object v9, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v10, "attributionId"

    invoke-interface {v9, v10, v6}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v9, "sixtyDayConversionData"

    invoke-interface {v6, v9}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 139
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_b
    iput-object v8, p0, Lcom/appsflyer/internal/AFg1oSDK;->w:Ljava/util/Map;

    .line 143
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;
    :try_end_1
    .catch Lcom/appsflyer/internal/AFf1ySDK; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v6

    .line 154
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[GCD] Error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v5, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 155
    sget-object v8, Lcom/appsflyer/internal/AFe1cSDK;->values:Lcom/appsflyer/internal/AFe1cSDK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_d

    .line 164
    :cond_c
    :goto_9
    iget-object v6, p0, Lcom/appsflyer/internal/AFg1oSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    invoke-virtual {v6, v4}, Lcom/appsflyer/internal/AFg1bSDK;->values(I)V

    .line 165
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto/16 :goto_4

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 158
    :cond_d
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog:Ljava/lang/String;

    .line 159
    throw v6

    :catch_1
    move-exception v0

    const-string v1, "[GCD-E05] AppsFlyer dev key is missing"

    .line 150
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v1, "AppsFlyer dev key is missing"

    .line 151
    iput-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog:Ljava/lang/String;

    .line 152
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :goto_b
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    invoke-virtual {v1, v4}, Lcom/appsflyer/internal/AFg1bSDK;->values(I)V

    .line 165
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 166
    throw v0

    :cond_e
    return-object v6

    :cond_f
    const-string v0, "[GCD-E03] \'isStopTracking\' enabled"

    .line 108
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "\'isStopTracking\' enabled"

    .line 109
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/appsflyer/internal/AFf1zSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFf1zSDK;-><init>()V

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method public final registerClient()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final unregisterClient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFd1xSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->force:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1rSDK;->values()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    sget-object v1, Lcom/appsflyer/internal/AFg1oSDK;->registerClient:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "[GCD] AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    .line 92
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_1
    const-string v0, ""

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFe1zSDK;

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GCD-B01] URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3035
    iget-object v1, p1, Lcom/appsflyer/internal/AFe1xSDK;->valueOf:Lcom/appsflyer/internal/AFe1mSDK;

    .line 3070
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1mSDK;->values:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf(Ljava/lang/String;)V

    return-object p1
.end method

.method public final valueOf()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1tSDK;->valueOf()V

    .line 72
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->w:Ljava/util/Map;

    .line 73
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1rSDK;->AFInAppEventType(Ljava/util/Map;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "Unknown error"

    .line 80
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public final values()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
