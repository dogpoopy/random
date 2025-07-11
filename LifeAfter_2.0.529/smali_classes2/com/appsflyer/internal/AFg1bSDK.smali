.class public final Lcom/appsflyer/internal/AFg1bSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final AFInAppEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

.field public final AFLogger:[J

.field public d:J

.field public final e:[J

.field public i:J

.field public final registerClient:[J

.field public unregisterClient:J

.field public v:J

.field public valueOf:J

.field public final values:Ljava/util/Map;
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
.method public constructor <init>(Lcom/appsflyer/internal/AFd1xSDK;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventType:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->valueOf:J

    .line 28
    iput-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->unregisterClient:J

    const/4 v2, 0x2

    new-array v3, v2, [J

    .line 29
    iput-object v3, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFLogger:[J

    new-array v3, v2, [J

    .line 30
    iput-object v3, p0, Lcom/appsflyer/internal/AFg1bSDK;->registerClient:[J

    new-array v2, v2, [J

    .line 31
    iput-object v2, p0, Lcom/appsflyer/internal/AFg1bSDK;->e:[J

    .line 37
    iput-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->d:J

    .line 38
    iput-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->v:J

    .line 43
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    .line 44
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v3, "first_launch"

    invoke-direct {p0, v3}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    const-string v3, "ddl"

    invoke-direct {p0, v3}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "gcd"

    invoke-direct {p0, v3}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "prev_session_dur"

    .line 47
    invoke-interface {p1, v2, v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->i:J

    return-void
.end method

.method private AFInAppEventParameterName(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-static {v1}, Lcom/appsflyer/internal/AFa1oSDK;->AFInAppEventType(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    const-string v2, "Error while parsing cached json data"

    .line 227
    invoke-static {v2, p1, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 5

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->unregisterClient:J

    .line 77
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFg1bSDK;->values()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->valueOf:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 79
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    iget-wide v3, p0, Lcom/appsflyer/internal/AFg1bSDK;->unregisterClient:J

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "init_to_fg"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 1215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1216
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_launch"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Metrics: init ts is missing"

    .line 82
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final AFInAppEventParameterName(I)V
    .locals 4

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->d:J

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 119
    iget-wide v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->unregisterClient:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    iget-wide v2, p0, Lcom/appsflyer/internal/AFg1bSDK;->d:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "from_fg"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 3215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3216
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "first_launch"

    invoke-interface {p1, v1, v0}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "Metrics: fg ts is missing"

    .line 123
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final AFInAppEventParameterName(Lcom/appsflyer/internal/AFg1fSDK;)V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFg1bSDK;->values()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "start_with"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 2215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2216
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "first_launch"

    invoke-interface {p1, v1, v0}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final valueOf(Lcom/appsflyer/deeplink/DeepLinkResult;J)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "timeout_value"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    .line 4215
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 4216
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ddl"

    invoke-interface {p1, p3, p2}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final values(I)V
    .locals 7

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    iget-wide v2, p0, Lcom/appsflyer/internal/AFg1bSDK;->v:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 196
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventType:Ljava/util/Map;

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "net"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "Metrics: gcdStart ts is missing"

    .line 198
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "retries"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventType:Ljava/util/Map;

    .line 5215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 5216
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcd"

    invoke-interface {p1, v1, v0}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final values()Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v1, 0x0

    const-string v2, "appsFlyerCount"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
