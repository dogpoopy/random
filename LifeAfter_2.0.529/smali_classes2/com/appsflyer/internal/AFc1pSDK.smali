.class public final Lcom/appsflyer/internal/AFc1pSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1kSDK;


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1xSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "deeplink_data"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public final valueOf()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "deeplink_data"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appsflyer/internal/AFi1eSDK;->AFInAppEventType(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Exception while parsing stored deeplink data"

    .line 47
    invoke-static {v3, v0, v1, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 51
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final valueOf(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "deeplink_data"

    invoke-interface {v0, v1, p1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
