.class public abstract Lcom/appsflyer/internal/AFi1wSDK;
.super Lcom/appsflyer/internal/AFi1nSDK;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/internal/AFi1nSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final values(Lcom/appsflyer/internal/AFd1xSDK;Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFd1xSDK;",
            "Lcom/appsflyer/internal/AFd1zSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Z)I

    move-result p1

    if-gtz p1, :cond_1

    .line 17
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventParameterName()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1042
    :cond_0
    iget-object p1, p2, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p2, p2, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventType:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appsflyer/internal/AFi1nSDK;->d:J

    .line 2032
    sget-object p1, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 2033
    new-instance p1, Lcom/appsflyer/internal/AFi1nSDK$3;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFi1nSDK$3;-><init>(Lcom/appsflyer/internal/AFi1nSDK;)V

    invoke-virtual {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    :cond_1
    :goto_0
    return-void
.end method
