.class public final Lcom/appsflyer/internal/AFh1sSDK;
.super Lcom/appsflyer/internal/AFa1pSDK;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1pSDK;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1bSDK;
    .locals 2

    .line 1186
    iget v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->registerClient:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->w:Lcom/appsflyer/internal/AFe1bSDK;

    return-object v0
.end method

.method public final registerClient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
