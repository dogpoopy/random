.class public final Lcom/appsflyer/internal/AFf1gSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1nSDK;

.field public AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

.field public AFKeystoreWrapper:J

.field public valueOf:J

.field public final values:Lcom/appsflyer/internal/AFd1xSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1xSDK;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1nSDK;

    .line 39
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1gSDK;->values:Lcom/appsflyer/internal/AFd1xSDK;

    .line 40
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1gSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFh1nSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

    const-wide/16 v0, 0x0

    const-string v2, "af_rc_timestamp"

    .line 41
    invoke-interface {p1, v2, v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appsflyer/internal/AFf1gSDK;->valueOf:J

    const-string v2, "af_rc_max_age"

    .line 42
    invoke-interface {p1, v2, v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFf1gSDK;->AFKeystoreWrapper:J

    return-void
.end method

.method private AFKeystoreWrapper()Lcom/appsflyer/internal/AFh1nSDK;
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1gSDK;->values:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v1, 0x0

    const-string v2, "af_remote_config"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v3, "No configuration found in cache"

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-object v1

    .line 93
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 94
    new-instance v0, Lcom/appsflyer/internal/AFh1nSDK;

    invoke-direct {v0, v2}, Lcom/appsflyer/internal/AFh1nSDK;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v4, 0x1

    const-string v5, "Error reading malformed configuration from cache, requires fetching from remote again"

    invoke-virtual {v2, v3, v5, v0, v4}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v1
.end method
