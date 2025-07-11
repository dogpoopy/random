.class public final Lcom/appsflyer/internal/AFh1oSDK;
.super Lcom/appsflyer/internal/AFh1qSDK;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "af_purchase"

    invoke-direct {p0, v1, v0}, Lcom/appsflyer/internal/AFh1qSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1bSDK;
    .locals 1

    .line 19
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->afInfoLog:Lcom/appsflyer/internal/AFe1bSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1pSDK;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/appsflyer/internal/AFh1oSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFh1qSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object p1

    return-object p1
.end method
