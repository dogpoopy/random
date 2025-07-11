.class public abstract Lcom/appsflyer/internal/AFi1ySDK;
.super Lcom/appsflyer/internal/AFi1nSDK;
.source ""


# instance fields
.field private valueOf:Lcom/appsflyer/internal/AFd1rSDK;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFd1rSDK;Ljava/lang/Runnable;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p4}, Lcom/appsflyer/internal/AFi1nSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 13
    iput-object p3, p0, Lcom/appsflyer/internal/AFi1ySDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    return-void
.end method


# virtual methods
.method protected final AFInAppEventParameterName()Z
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1ySDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 1164
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v1, 0x0

    const-string v2, "appsFlyerCount"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Install referrer will not load, the counter > 1, "

    .line 21
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
