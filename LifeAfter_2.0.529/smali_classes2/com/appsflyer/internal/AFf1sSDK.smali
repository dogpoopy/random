.class public final Lcom/appsflyer/internal/AFf1sSDK;
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
.field private final registerClient:Ljava/lang/String;

.field private final w:Lcom/appsflyer/internal/AFj1ySDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFj1ySDK;)V
    .locals 4

    .line 24
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->i:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1bSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1sSDK;->registerClient:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/appsflyer/internal/AFf1sSDK;->w:Lcom/appsflyer/internal/AFj1ySDK;

    return-void
.end method


# virtual methods
.method protected final registerClient()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final unregisterClient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 1
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

    .line 33
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1tSDK;->e:Lcom/appsflyer/internal/AFe1zSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->registerClient:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventParameterName(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    return-object p1
.end method

.method public final valueOf()V
    .locals 4

    .line 38
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1tSDK;->valueOf()V

    .line 1107
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1pSDK;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "call to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1sSDK;->registerClient:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cross promotion redirection success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1sSDK;->registerClient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    const-string v1, "Location"

    .line 49
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1sSDK;->w:Lcom/appsflyer/internal/AFj1ySDK;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 2027
    iput-object v0, v1, Lcom/appsflyer/internal/AFj1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 2031
    iget-object v0, v1, Lcom/appsflyer/internal/AFj1ySDK;->valueOf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2033
    :try_start_0
    iget-object v2, v1, Lcom/appsflyer/internal/AFj1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2034
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v1, v1, Lcom/appsflyer/internal/AFj1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2038
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to open cross promotion url, does OS have browser installed?"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cross promotion impressions success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1sSDK;->registerClient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final values()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
