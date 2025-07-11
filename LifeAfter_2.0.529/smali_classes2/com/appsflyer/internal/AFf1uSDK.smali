.class public final Lcom/appsflyer/internal/AFf1uSDK;
.super Lcom/appsflyer/internal/AFf1tSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFf1tSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final afInfoLog:Ljava/util/UUID;

.field private final force:Ljava/lang/String;

.field private final i:Lcom/appsflyer/share/LinkGenerator;

.field private final registerClient:Ljava/lang/String;

.field private final v:Lcom/appsflyer/share/LinkGenerator$ResponseListener;

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/appsflyer/share/LinkGenerator$ResponseListener;Lcom/appsflyer/share/LinkGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFd1nSDK;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/share/LinkGenerator$ResponseListener;",
            "Lcom/appsflyer/share/LinkGenerator;",
            ")V"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1bSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1uSDK;->afInfoLog:Ljava/util/UUID;

    .line 49
    iput-object p3, p0, Lcom/appsflyer/internal/AFf1uSDK;->registerClient:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->w:Ljava/util/Map;

    .line 51
    iput-object p6, p0, Lcom/appsflyer/internal/AFf1uSDK;->v:Lcom/appsflyer/share/LinkGenerator$ResponseListener;

    .line 52
    iput-object p5, p0, Lcom/appsflyer/internal/AFf1uSDK;->force:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/appsflyer/internal/AFf1uSDK;->i:Lcom/appsflyer/share/LinkGenerator;

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method protected final force()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final registerClient()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final unregisterClient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->e:Lcom/appsflyer/internal/AFe1zSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1uSDK;->registerClient:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1uSDK;->w:Ljava/util/Map;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1uSDK;->force:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/AFf1uSDK;->afInfoLog:Ljava/util/UUID;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/internal/AFe1zSDK;->AFInAppEventType(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    return-object p1
.end method

.method public final valueOf()V
    .locals 3

    .line 64
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1tSDK;->valueOf()V

    .line 66
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->v:Lcom/appsflyer/share/LinkGenerator$ResponseListener;

    if-eqz v0, :cond_3

    .line 1236
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    .line 1072
    sget-object v2, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    if-ne v1, v2, :cond_0

    .line 2107
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-eqz v1, :cond_0

    .line 3107
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    .line 1073
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1pSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1074
    invoke-interface {v0, v1}, Lcom/appsflyer/share/LinkGenerator$ResponseListener;->onResponse(Ljava/lang/String;)V

    return-void

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1fSDK;->d()Ljava/lang/Throwable;

    move-result-object v1

    .line 1077
    instance-of v2, v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    if-eqz v2, :cond_2

    .line 1080
    check-cast v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    invoke-virtual {v1}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFe1pSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1pSDK;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Can\'t parse one link data"

    .line 1081
    invoke-interface {v0, v1}, Lcom/appsflyer/share/LinkGenerator$ResponseListener;->onResponseError(Ljava/lang/String;)V

    return-void

    .line 1083
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1uSDK;->i:Lcom/appsflyer/share/LinkGenerator;

    invoke-virtual {v1}, Lcom/appsflyer/share/LinkGenerator;->generateLink()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsflyer/share/LinkGenerator$ResponseListener;->onResponse(Ljava/lang/String;)V

    return-void

    .line 1086
    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1uSDK;->i:Lcom/appsflyer/share/LinkGenerator;

    invoke-virtual {v1}, Lcom/appsflyer/share/LinkGenerator;->generateLink()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsflyer/share/LinkGenerator$ResponseListener;->onResponse(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
