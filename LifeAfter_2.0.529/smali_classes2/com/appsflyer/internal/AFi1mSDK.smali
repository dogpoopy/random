.class public final Lcom/appsflyer/internal/AFi1mSDK;
.super Lcom/appsflyer/internal/AFi1nSDK;
.source ""


# instance fields
.field final AFKeystoreWrapper:Landroid/content/pm/ProviderInfo;

.field private final valueOf:Lcom/appsflyer/internal/AFd1nSDK;


# direct methods
.method public constructor <init>(Landroid/content/pm/ProviderInfo;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 2

    .line 39
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, "af_referrer"

    invoke-direct {p0, v1, v0, p2}, Lcom/appsflyer/internal/AFi1nSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 40
    iput-object p3, p0, Lcom/appsflyer/internal/AFi1mSDK;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    .line 41
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1mSDK;->AFKeystoreWrapper:Landroid/content/pm/ProviderInfo;

    return-void
.end method

.method public static AFInAppEventType(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 3

    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 118
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Failed to acquire unstable content providerClient due to unexpected throwable"

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Failed to acquire unstable content providerClient due to SecurityException"

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final values(Landroid/content/Context;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/appsflyer/internal/AFi1mSDK$2;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/AFi1mSDK$2;-><init>(Lcom/appsflyer/internal/AFi1mSDK;Landroid/content/Context;)V

    .line 105
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1mSDK;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
