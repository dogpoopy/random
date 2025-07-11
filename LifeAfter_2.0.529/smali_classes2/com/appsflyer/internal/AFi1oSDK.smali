.class public final Lcom/appsflyer/internal/AFi1oSDK;
.super Lcom/appsflyer/internal/AFi1wSDK;
.source ""


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 2

    const-string v0, "store"

    const-string v1, "samsung"

    .line 39
    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFi1wSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 40
    iput-object p2, p0, Lcom/appsflyer/internal/AFi1oSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    return-void
.end method


# virtual methods
.method public final values(Landroid/content/Context;)V
    .locals 7

    .line 45
    new-instance v6, Lcom/appsflyer/internal/AFi1oSDK$5;

    iget-object v3, p0, Lcom/appsflyer/internal/AFi1oSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901"

    aput-object v1, v5, v0

    const-string v4, "com.sec.android.app.samsungapps.referrer"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFi1oSDK$5;-><init>(Lcom/appsflyer/internal/AFi1oSDK;Landroid/content/Context;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1oSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lcom/appsflyer/internal/AFi1oSDK;->values(Lcom/appsflyer/internal/AFd1xSDK;Lcom/appsflyer/internal/AFd1zSDK;)V

    return-void
.end method
