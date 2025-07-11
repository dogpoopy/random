.class public final Lcom/appsflyer/internal/AFg1eSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFg1gSDK;


# instance fields
.field private AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1lSDK;

.field private AFInAppEventType:Lcom/appsflyer/internal/AFg1dSDK;

.field private final valueOf:Lcom/appsflyer/internal/AFd1nSDK;

.field private values:Lcom/appsflyer/internal/AFg1jSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1eSDK;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 4

    .line 90
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFg1mSDK;

    .line 2043
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1lSDK;

    if-nez v2, :cond_0

    .line 2044
    new-instance v2, Lcom/appsflyer/internal/AFg1lSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFg1eSDK;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v2, v3}, Lcom/appsflyer/internal/AFg1lSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    iput-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1lSDK;

    .line 2046
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1lSDK;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/appsflyer/AFLogger;->registerClient([Lcom/appsflyer/internal/AFg1mSDK;)V

    return-void
.end method

.method public final AFInAppEventType()V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1eSDK;->values:Lcom/appsflyer/internal/AFg1jSDK;

    if-eqz v0, :cond_0

    .line 78
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 79
    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->v:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "Releasing Proxy Manager Client"

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFg1mSDK;->v$default(Lcom/appsflyer/internal/AFg1mSDK;Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/appsflyer/internal/AFg1mSDK;

    const/4 v3, 0x0

    .line 80
    check-cast v0, Lcom/appsflyer/internal/AFg1mSDK;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/appsflyer/AFLogger;->unregisterClient([Lcom/appsflyer/internal/AFg1mSDK;)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1eSDK;->values:Lcom/appsflyer/internal/AFg1jSDK;

    :cond_0
    return-void
.end method

.method public final AFKeystoreWrapper()V
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1lSDK;

    if-eqz v0, :cond_0

    .line 58
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 59
    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "Releasing Exception Manager Client"

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFg1mSDK;->v$default(Lcom/appsflyer/internal/AFg1mSDK;Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/appsflyer/internal/AFg1mSDK;

    const/4 v3, 0x0

    .line 60
    check-cast v0, Lcom/appsflyer/internal/AFg1mSDK;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/appsflyer/AFLogger;->unregisterClient([Lcom/appsflyer/internal/AFg1mSDK;)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1lSDK;

    :cond_0
    return-void
.end method

.method public final AFLogger()V
    .locals 4

    .line 86
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFg1mSDK;

    .line 1050
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->values:Lcom/appsflyer/internal/AFg1jSDK;

    if-nez v2, :cond_0

    .line 1051
    new-instance v2, Lcom/appsflyer/internal/AFg1jSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFg1jSDK;-><init>()V

    iput-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->values:Lcom/appsflyer/internal/AFg1jSDK;

    .line 1053
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->values:Lcom/appsflyer/internal/AFg1jSDK;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/appsflyer/AFLogger;->registerClient([Lcom/appsflyer/internal/AFg1mSDK;)V

    return-void
.end method

.method public final valueOf()V
    .locals 4

    .line 88
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFg1mSDK;

    .line 2036
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1dSDK;

    if-nez v2, :cond_0

    .line 2037
    new-instance v2, Lcom/appsflyer/internal/AFg1dSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFg1eSDK;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v2, v3}, Lcom/appsflyer/internal/AFg1dSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    iput-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1dSDK;

    .line 2039
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1dSDK;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/appsflyer/AFLogger;->registerClient([Lcom/appsflyer/internal/AFg1mSDK;)V

    return-void
.end method

.method public final values()V
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1dSDK;

    if-eqz v0, :cond_0

    .line 68
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 69
    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->v:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "Releasing Proxy Manager Client"

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFg1mSDK;->v$default(Lcom/appsflyer/internal/AFg1mSDK;Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/appsflyer/internal/AFg1mSDK;

    const/4 v3, 0x0

    .line 70
    check-cast v0, Lcom/appsflyer/internal/AFg1mSDK;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/appsflyer/AFLogger;->unregisterClient([Lcom/appsflyer/internal/AFg1mSDK;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1eSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1dSDK;

    :cond_0
    return-void
.end method
