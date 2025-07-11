.class final Lcom/appsflyer/internal/AFb1vSDK$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/util/Map;)Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Ljava/util/Map;

.field private synthetic valueOf:Lcom/appsflyer/internal/AFb1vSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFb1vSDK;Ljava/util/Map;)V
    .locals 0

    .line 1633
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1vSDK$3;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK$3;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType(Ljava/lang/String;)V
    .locals 2

    .line 1642
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$3;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {v0, p1, v1}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void
.end method

.method public final AFInAppEventType(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2646
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2647
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1vSDK$3;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1637
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1vSDK$3;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$3;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFc1jSDK;->AFKeystoreWrapper(Ljava/util/Map;)V

    return-void
.end method
