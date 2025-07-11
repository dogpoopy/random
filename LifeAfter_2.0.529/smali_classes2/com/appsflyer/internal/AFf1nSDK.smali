.class public final Lcom/appsflyer/internal/AFf1nSDK;
.super Lcom/appsflyer/internal/AFe1fSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final registerClient:Lcom/appsflyer/internal/AFc1qSDK;

.field private unregisterClient:Lcom/appsflyer/deeplink/DeepLinkResult;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1qSDK;)V
    .locals 4

    .line 26
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1bSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DdlSdk"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1nSDK;->registerClient:Lcom/appsflyer/internal/AFc1qSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFe1cSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1nSDK;->registerClient:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1qSDK;->unregisterClient()Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1nSDK;->unregisterClient:Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 42
    sget-object v0, Lcom/appsflyer/internal/AFf1nSDK$4;->valueOf:[I

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1nSDK;->unregisterClient:Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1nSDK;->unregisterClient:Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-virtual {v0}, Lcom/appsflyer/deeplink/DeepLinkResult;->getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    if-ne v0, v1, :cond_0

    .line 49
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->values:Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0

    .line 44
    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper()J
    .locals 2

    const-wide/32 v0, 0x15f90

    return-wide v0
.end method

.method public final values()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
