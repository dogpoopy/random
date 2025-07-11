.class public final Lcom/appsflyer/internal/AFf1vSDK;
.super Lcom/appsflyer/internal/AFe1fSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:Z


# instance fields
.field private final AFLogger:Lcom/appsflyer/internal/AFb1rSDK;

.field private final d:Lcom/appsflyer/internal/AFe1dSDK;

.field private final registerClient:Lcom/appsflyer/internal/AFd1nSDK;

.field private unregisterClient:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 3

    .line 37
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1bSDK;

    const-string v2, "LoadCachedRequests"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afRDLog()Lcom/appsflyer/internal/AFb1rSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->AFLogger:Lcom/appsflyer/internal/AFb1rSDK;

    .line 39
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->d:Lcom/appsflyer/internal/AFe1dSDK;

    .line 40
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1vSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    return-void
.end method

.method public static unregisterClient()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/appsflyer/internal/AFf1vSDK;->e:Z

    return v0
.end method

.method private static values(Lcom/appsflyer/internal/AFb1kSDK;)Ljava/lang/String;
    .locals 7

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3093
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/16 v3, 0xa

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 4089
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1kSDK;->valueOf:Ljava/lang/String;

    .line 84
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "isCachedRequest"

    const-string v6, "true"

    .line 85
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "timeincache"

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 86
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t parse the uri"

    .line 89
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFe1cSDK;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->AFLogger:Lcom/appsflyer/internal/AFb1rSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFb1kSDK;

    .line 58
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->values:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resending request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1089
    iget-object v5, v1, Lcom/appsflyer/internal/AFb1kSDK;->valueOf:Ljava/lang/String;

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-static {v1}, Lcom/appsflyer/internal/AFf1vSDK;->values(Lcom/appsflyer/internal/AFb1kSDK;)Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/appsflyer/internal/AFh1tSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType()[B

    move-result-object v4

    .line 1093
    iget-object v5, v1, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1102
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    .line 62
    invoke-direct {v3, v2, v4, v5, v1}, Lcom/appsflyer/internal/AFh1tSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFe1bSDK;)V

    .line 64
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1vSDK;->d:Lcom/appsflyer/internal/AFe1dSDK;

    new-instance v2, Lcom/appsflyer/internal/AFf1qSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFf1vSDK;->registerClient:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v2, v3, v4}, Lcom/appsflyer/internal/AFf1qSDK;-><init>(Lcom/appsflyer/internal/AFh1tSDK;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 2089
    iget-object v3, v1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v4, v1, v2}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "Failed to resend cached request"

    invoke-virtual {v2, v3, v4, v1}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->unregisterClient:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 73
    sput-boolean v0, Lcom/appsflyer/internal/AFf1vSDK;->e:Z

    .line 74
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper()J
    .locals 2

    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public final values()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
