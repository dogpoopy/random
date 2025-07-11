.class public final Lcom/appsflyer/internal/AFc1qSDK;
.super Lcom/appsflyer/internal/AFh1vSDK;
.source ""


# instance fields
.field private AFLogger$LogLevel:I

.field private final afDebugLog:Ljava/util/concurrent/ExecutorService;

.field private final afErrorLog:Lcom/appsflyer/internal/AFb1cSDK;

.field private afErrorLogForExcManagerOnly:Z

.field private final afInfoLog:Lcom/appsflyer/internal/AFg1zSDK;

.field private afLogForce:I

.field private final afRDLog:Lcom/appsflyer/internal/AFd1sSDK;

.field private final afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFi1kSDK;

.field private final force:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFi1nSDK;",
            ">;"
        }
    .end annotation
.end field

.field private getLevel:I

.field private final i:Lcom/appsflyer/internal/AFd1rSDK;

.field private final v:Lcom/appsflyer/internal/AFg1bSDK;

.field private final w:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 6

    .line 65
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const-string v2, "https://%sdlsdk.%s/v1.0/android/"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1vSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->force:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->w:Ljava/util/concurrent/CountDownLatch;

    .line 66
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    .line 67
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->i:Lcom/appsflyer/internal/AFd1rSDK;

    .line 68
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1zSDK;

    .line 69
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afWarnLog:Lcom/appsflyer/internal/AFi1kSDK;

    .line 70
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afDebugLog:Ljava/util/concurrent/ExecutorService;

    .line 71
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1cSDK;

    .line 72
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    .line 73
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afRDLog:Lcom/appsflyer/internal/AFd1sSDK;

    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFc1qSDK;)Lcom/appsflyer/deeplink/DeepLinkResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 16133
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    iget v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    const/4 v2, 0x2

    const-string v3, "Metrics: Unexpected ddl requestCount = "

    const-string v4, "ddl"

    const-wide/16 v5, 0x0

    if-lez v1, :cond_2

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 17152
    iget-object v7, v0, Lcom/appsflyer/internal/AFg1bSDK;->AFLogger:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v7, v1

    if-nez v1, :cond_3

    .line 17154
    iget-wide v7, v0, Lcom/appsflyer/internal/AFg1bSDK;->unregisterClient:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_1

    .line 17155
    iget-object v7, v0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    iget-object v8, v0, Lcom/appsflyer/internal/AFg1bSDK;->AFLogger:[J

    aget-wide v9, v8, v1

    iget-wide v11, v0, Lcom/appsflyer/internal/AFg1bSDK;->unregisterClient:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v8, "from_fg"

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17156
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    .line 17215
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 17216
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v0, "Metrics: fg ts is missing"

    .line 17158
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_2

    .line 17148
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "Unexpected ddl requestCount - start"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16135
    :cond_3
    :goto_2
    new-instance v0, Lcom/appsflyer/internal/AFb1uSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1cSDK;

    invoke-direct {v0, p0, v1}, Lcom/appsflyer/internal/AFb1uSDK;-><init>(Lcom/appsflyer/internal/AFh1vSDK;Lcom/appsflyer/internal/AFb1cSDK;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1zSDK;

    .line 18065
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 16135
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFb1uSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 16136
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    iget v7, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    if-lez v7, :cond_6

    if-le v7, v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 18169
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1bSDK;->registerClient:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v2, v7

    .line 18170
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1bSDK;->AFLogger:[J

    aget-wide v8, v2, v7

    cmp-long v2, v8, v5

    if-eqz v2, :cond_5

    .line 18171
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1bSDK;->e:[J

    iget-object v3, v1, Lcom/appsflyer/internal/AFg1bSDK;->registerClient:[J

    aget-wide v8, v3, v7

    iget-object v3, v1, Lcom/appsflyer/internal/AFg1bSDK;->AFLogger:[J

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    aput-wide v8, v2, v7

    .line 18172
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    iget-object v3, v1, Lcom/appsflyer/internal/AFg1bSDK;->e:[J

    const-string v7, "net"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18173
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    .line 18215
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 18216
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 18175
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Metrics: ddlStart["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ts is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_4

    .line 18165
    :cond_6
    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "Unexpected ddl requestCount - end"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16137
    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_c

    .line 19176
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 19177
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v2, "is_second_ping"

    .line 19178
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/appsflyer/internal/AFc1qSDK;->afErrorLogForExcManagerOnly:Z

    const-string v2, "found"

    .line 19179
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v1, v3

    goto :goto_5

    :cond_7
    const-string v2, "click_event"

    .line 19182
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventType(Lorg/json/JSONObject;)Lcom/appsflyer/deeplink/DeepLink;

    move-result-object v1

    .line 20140
    iget-object v2, v1, Lcom/appsflyer/deeplink/DeepLink;->valueOf:Lorg/json/JSONObject;

    const-string v7, "is_deferred"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_5
    if-eqz v1, :cond_8

    .line 16140
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {p0, v1, v3}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-object p0

    .line 16142
    :cond_8
    iget v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    if-gt v1, v0, :cond_b

    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1qSDK;->afInfoLog()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afErrorLogForExcManagerOnly:Z

    if-eqz v0, :cond_b

    .line 20158
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Waiting for referrers..."

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 20159
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->w:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 20160
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    .line 20180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 20181
    iget-object v7, v0, Lcom/appsflyer/internal/AFg1bSDK;->registerClient:[J

    const/4 v8, 0x0

    aget-wide v9, v7, v8

    cmp-long v7, v9, v5

    if-eqz v7, :cond_9

    .line 20182
    iget-object v5, v0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    iget-object v6, v0, Lcom/appsflyer/internal/AFg1bSDK;->registerClient:[J

    aget-wide v7, v6, v8

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "rfr_wait"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20183
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    .line 20215
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 20216
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const-string v0, "Metrics: ddlEnd[0] ts is missing"

    .line 20185
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 20161
    :goto_6
    iget v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->getLevel:I

    iget v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->AFLogger$LogLevel:I

    if-ne v0, v1, :cond_a

    .line 21154
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {p0, v3, v3}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-object p0

    .line 20164
    :cond_a
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1qSDK;->force()V

    goto/16 :goto_0

    .line 22154
    :cond_b
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {p0, v3, v3}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-object p0

    .line 16148
    :cond_c
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred. Server response code = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 16149
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {p0, v3, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-object p0
.end method

.method private AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1nSDK;)V
    .locals 4

    .line 275
    invoke-static {p1}, Lcom/appsflyer/internal/AFc1qSDK;->values(Lcom/appsflyer/internal/AFi1nSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->force:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->w:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 278
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added non-organic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_0
    iget p1, p0, Lcom/appsflyer/internal/AFc1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/internal/AFc1qSDK;->getLevel:I

    iget v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->AFLogger$LogLevel:I

    if-ne p1, v0, :cond_1

    .line 280
    iget-object p1, p0, Lcom/appsflyer/internal/AFc1qSDK;->w:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1aSDK;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1aSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6028
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6033
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Lcom/appsflyer/internal/AFc1qSDK$3;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/AFc1qSDK$3;-><init>(Lcom/appsflyer/internal/AFc1qSDK;Lcom/appsflyer/internal/AFa1aSDK;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFc1qSDK;)V
    .locals 7

    .line 14248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14249
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afWarnLog:Lcom/appsflyer/internal/AFi1kSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 15052
    iget-object v5, v4, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 14250
    sget-object v6, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->valueOf:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    if-eq v5, v6, :cond_0

    .line 14251
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14254
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->AFLogger$LogLevel:I

    .line 14255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFi1nSDK;

    .line 14256
    sget-object v2, Lcom/appsflyer/internal/AFc1qSDK$1;->valueOf:[I

    .line 16052
    iget-object v3, v1, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 14256
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 14262
    :cond_2
    new-instance v2, Lcom/appsflyer/internal/AFc1qSDK$5;

    invoke-direct {v2, p0, v1}, Lcom/appsflyer/internal/AFc1qSDK$5;-><init>(Lcom/appsflyer/internal/AFc1qSDK;Lcom/appsflyer/internal/AFi1nSDK;)V

    invoke-virtual {v1, v2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    goto :goto_1

    .line 14258
    :cond_3
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v6, "source"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " referrer collected earlier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 14259
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1nSDK;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFc1qSDK;Lcom/appsflyer/internal/AFi1nSDK;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFc1qSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1nSDK;)V

    return-void
.end method

.method private afInfoLog()Z
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v1, "referrers"

    .line 6187
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    iget v3, p0, Lcom/appsflyer/internal/AFc1qSDK;->AFLogger$LogLevel:I

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method private afWarnLog()Ljava/lang/String;
    .locals 4

    .line 240
    new-instance v0, Lcom/appsflyer/internal/AFi1cSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->i:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;)V

    .line 241
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1zSDK;

    .line 13065
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v3, "timestamp"

    .line 243
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFi1cSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private force()V
    .locals 5

    .line 196
    iget v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    .line 197
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preparing request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    if-ne v0, v1, :cond_3

    .line 199
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1qSDK;->i:Lcom/appsflyer/internal/AFd1rSDK;

    .line 7164
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v3, 0x0

    const-string v4, "appsFlyerCount"

    invoke-interface {v2, v4, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 199
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_first"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "os"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->i:Lcom/appsflyer/internal/AFd1rSDK;

    .line 8098
    iget-object v2, v1, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v2, v1}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "request_id"

    .line 203
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afRDLog:Lcom/appsflyer/internal/AFd1sSDK;

    .line 9017
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1aSDK;

    if-eqz v0, :cond_1

    .line 9040
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1aSDK;->AFKeystoreWrapper:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "sharing_filter"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->i:Lcom/appsflyer/internal/AFd1rSDK;

    .line 9168
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 10025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 9057
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v0

    .line 211
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFc1qSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1aSDK;)Ljava/util/Map;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->i:Lcom/appsflyer/internal/AFd1rSDK;

    .line 10168
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 11025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 10062
    invoke-static {v1}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v1

    .line 212
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1aSDK;)Ljava/util/Map;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 214
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v3, "gaid"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    .line 217
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "oaid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    .line 12020
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "UTC"

    .line 13015
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 13016
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    .line 220
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    iget v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "request_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->force:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFi1nSDK;

    .line 226
    invoke-static {v2}, Lcom/appsflyer/internal/AFc1qSDK;->valueOf(Lcom/appsflyer/internal/AFi1nSDK;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 228
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 232
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v2, "referrers"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_6
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1qSDK;->afWarnLog()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1pSDK;

    return-void
.end method

.method private static valueOf(Lcom/appsflyer/internal/AFi1nSDK;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFi1nSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14052
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 293
    sget-object v1, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    if-ne v0, v1, :cond_0

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v2, "referrer"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 297
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v2, "source"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "value"

    .line 298
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFc1qSDK;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1qSDK;->force()V

    return-void
.end method

.method private static values(Lcom/appsflyer/internal/AFi1nSDK;)Z
    .locals 6

    .line 285
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v0, "click_ts"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 289
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1bSDK;
    .locals 1

    .line 307
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1bSDK;

    return-object v0
.end method

.method public final unregisterClient()Lcom/appsflyer/deeplink/DeepLinkResult;
    .locals 10

    .line 77
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/appsflyer/internal/AFc1qSDK$2;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFc1qSDK$2;-><init>(Lcom/appsflyer/internal/AFc1qSDK;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 87
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afDebugLog:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    .line 1294
    iget-wide v2, v2, Lcom/appsflyer/internal/AFc1jSDK;->AFLogger:J

    .line 91
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 2113
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1qSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    .line 2294
    iget-wide v3, v3, Lcom/appsflyer/internal/AFc1jSDK;->AFLogger:J

    .line 2113
    invoke-virtual {v2, v0, v3, v4}, Lcom/appsflyer/internal/AFg1bSDK;->valueOf(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 2114
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "[DDL] Timeout"

    .line 103
    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timeout, didn\'t manage to find deferred deep link after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/appsflyer/internal/AFc1qSDK;->afLogForce:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " attempt(s) within "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    .line 4294
    iget-wide v4, v4, Lcom/appsflyer/internal/AFc1jSDK;->AFLogger:J

    .line 105
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 5113
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    .line 5294
    iget-wide v2, v2, Lcom/appsflyer/internal/AFc1jSDK;->AFLogger:J

    .line 5113
    invoke-virtual {v1, v0, v2, v3}, Lcom/appsflyer/internal/AFg1bSDK;->valueOf(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 5114
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 95
    :goto_0
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "AppsFlyer SDK is stopped: the request was not sent to the server"

    move-object v5, v0

    invoke-virtual/range {v2 .. v9}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    .line 97
    new-instance v2, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    goto :goto_1

    .line 100
    :cond_0
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    :goto_1
    invoke-direct {v2, v1, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 3113
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->v:Lcom/appsflyer/internal/AFg1bSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    .line 3294
    iget-wide v3, v1, Lcom/appsflyer/internal/AFc1jSDK;->AFLogger:J

    .line 3113
    invoke-virtual {v0, v2, v3, v4}, Lcom/appsflyer/internal/AFg1bSDK;->valueOf(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 3114
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK;->afVerboseLog:Lcom/appsflyer/internal/AFc1jSDK;

    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    move-object v0, v2

    :goto_2
    return-object v0
.end method
