.class public final Lcom/appsflyer/internal/AFf1qSDK;
.super Lcom/appsflyer/internal/AFf1tSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFf1tSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final registerClient:Lcom/appsflyer/internal/AFh1tSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFh1tSDK;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 7

    .line 1030
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1tSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1tSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    goto :goto_0

    .line 1033
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->valueOf:Lcom/appsflyer/internal/AFe1bSDK;

    :goto_0
    move-object v2, v0

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v0, 0x0

    .line 26
    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    aput-object v1, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1204
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1pSDK;->values:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/appsflyer/internal/AFf1qSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFh1tSDK;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2204
    iget-object v6, p1, Lcom/appsflyer/internal/AFa1pSDK;->values:Ljava/lang/String;

    move-object v1, p0

    move-object v4, p2

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1qSDK;->registerClient:Lcom/appsflyer/internal/AFh1tSDK;

    return-void
.end method

.method private static AFInAppEventType(Lcom/appsflyer/internal/AFh1tSDK;)Ljava/lang/String;
    .locals 1

    .line 7087
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method protected final registerClient()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1qSDK;->registerClient:Lcom/appsflyer/internal/AFh1tSDK;

    .line 6097
    iget-object v0, v0, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    return-object v0
.end method

.method protected final unregisterClient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1qSDK;->registerClient:Lcom/appsflyer/internal/AFh1tSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->values()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cached data: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->d:Lcom/appsflyer/internal/AFb1cSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1qSDK;->registerClient:Lcom/appsflyer/internal/AFh1tSDK;

    .line 3083
    iget-object v1, v1, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Ljava/lang/String;

    .line 42
    invoke-interface {v0, v1, p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1tSDK;->e:Lcom/appsflyer/internal/AFe1zSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1qSDK;->registerClient:Lcom/appsflyer/internal/AFh1tSDK;

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFe1zSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1tSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    return-object p1
.end method

.method public final values()Z
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1qSDK;->registerClient:Lcom/appsflyer/internal/AFh1tSDK;

    .line 4030
    iget-object v1, v0, Lcom/appsflyer/internal/AFh1tSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    if-eqz v1, :cond_0

    .line 4031
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1tSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    goto :goto_0

    .line 4033
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->valueOf:Lcom/appsflyer/internal/AFe1bSDK;

    .line 57
    :goto_0
    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->afRDLog:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 4107
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-eqz v0, :cond_1

    .line 5107
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    .line 59
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1pSDK;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1a8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 61
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1tSDK;->values()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    :goto_2
    return v2
.end method
