.class final Lcom/appsflyer/internal/AFc1qSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFc1qSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFc1qSDK;Lcom/appsflyer/internal/AFi1nSDK;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1qSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFc1qSDK$5;->AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .line 265
    sget-object p2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1qSDK$5;->AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v3, "source"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " referrer collected via observer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcom/appsflyer/internal/AFc1qSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    check-cast p1, Lcom/appsflyer/internal/AFi1nSDK;

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFc1qSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFc1qSDK;Lcom/appsflyer/internal/AFi1nSDK;)V

    return-void
.end method
