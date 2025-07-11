.class public abstract Lcom/appsflyer/internal/AFi1nSDK;
.super Ljava/util/Observable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;
    }
.end annotation


# instance fields
.field public final AFInAppEventParameterName:Ljava/lang/String;

.field final AFInAppEventType:Ljava/lang/Runnable;

.field public final AFLogger:Ljava/lang/String;

.field d:J

.field public unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

.field public final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    .line 18
    sget-object v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->valueOf:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 23
    iput-object p3, p0, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventType:Ljava/lang/Runnable;

    .line 24
    iput-object p2, p0, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1nSDK;->AFLogger:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1nSDK;->AFLogger:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/appsflyer/internal/AFi1nSDK;->d:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "latency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 47
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFi1nSDK;->setChanged()V

    .line 48
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public abstract values(Landroid/content/Context;)V
.end method
