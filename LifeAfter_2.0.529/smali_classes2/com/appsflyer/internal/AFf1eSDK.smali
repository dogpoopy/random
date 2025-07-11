.class public final Lcom/appsflyer/internal/AFf1eSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFe1eSDK;


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1rSDK;

.field private final AFInAppEventType:Lcom/appsflyer/internal/AFf1cSDK;

.field private final AFKeystoreWrapper:Ljava/lang/Object;

.field private final AFLogger:Lcom/appsflyer/internal/AFe1zSDK;

.field private final d:Lcom/appsflyer/internal/AFf1dSDK;

.field private final e:Lcom/appsflyer/internal/AFe1dSDK;

.field private registerClient:Lcom/appsflyer/internal/AFf1lSDK;

.field private unregisterClient:Lcom/appsflyer/internal/AFh1iSDK;

.field public final valueOf:Lcom/appsflyer/internal/AFf1gSDK;

.field private final values:Lcom/appsflyer/internal/AFg1zSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFf1gSDK;Lcom/appsflyer/internal/AFe1zSDK;Lcom/appsflyer/internal/AFf1dSDK;Lcom/appsflyer/internal/AFe1dSDK;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFf1cSDK;

    .line 52
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1rSDK;

    .line 53
    iput-object p3, p0, Lcom/appsflyer/internal/AFf1eSDK;->values:Lcom/appsflyer/internal/AFg1zSDK;

    .line 54
    iput-object p4, p0, Lcom/appsflyer/internal/AFf1eSDK;->valueOf:Lcom/appsflyer/internal/AFf1gSDK;

    .line 55
    iput-object p5, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFLogger:Lcom/appsflyer/internal/AFe1zSDK;

    .line 56
    iput-object p6, p0, Lcom/appsflyer/internal/AFf1eSDK;->d:Lcom/appsflyer/internal/AFf1dSDK;

    .line 57
    iput-object p7, p0, Lcom/appsflyer/internal/AFf1eSDK;->e:Lcom/appsflyer/internal/AFe1dSDK;

    .line 1145
    iget-object p1, p7, Lcom/appsflyer/internal/AFe1dSDK;->AFKeystoreWrapper:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private values(Lcom/appsflyer/internal/AFf1lSDK;Lcom/appsflyer/internal/AFf1iSDK;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->registerClient:Lcom/appsflyer/internal/AFf1lSDK;

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 106
    invoke-interface {p2, p1}, Lcom/appsflyer/internal/AFf1iSDK;->onRemoteConfigUpdateFinished(Lcom/appsflyer/internal/AFf1lSDK;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFh1iSDK;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1iSDK;

    const/4 v2, 0x0

    .line 87
    iput-object v2, p0, Lcom/appsflyer/internal/AFf1eSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1iSDK;

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 89
    monitor-exit v0

    throw v1
.end method

.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1fSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1fSDK<",
            "*>;)V"
        }
    .end annotation

    .line 142
    instance-of v0, p1, Lcom/appsflyer/internal/AFf1hSDK;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lcom/appsflyer/internal/AFf1hSDK;

    .line 5078
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5079
    :try_start_0
    iput-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1iSDK;

    .line 5080
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    .line 5119
    iget-object p1, p1, Lcom/appsflyer/internal/AFf1hSDK;->d:Lcom/appsflyer/internal/AFf1iSDK;

    .line 145
    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/AFf1eSDK;->values(Lcom/appsflyer/internal/AFf1lSDK;Lcom/appsflyer/internal/AFf1iSDK;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5080
    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1fSDK;Lcom/appsflyer/internal/AFe1cSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1fSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFe1cSDK;",
            ")V"
        }
    .end annotation

    .line 123
    instance-of p2, p1, Lcom/appsflyer/internal/AFf1hSDK;

    if-eqz p2, :cond_2

    .line 124
    check-cast p1, Lcom/appsflyer/internal/AFf1hSDK;

    .line 3080
    iget-object p2, p1, Lcom/appsflyer/internal/AFf1hSDK;->AFLogger:Lcom/appsflyer/internal/AFf1lSDK;

    if-nez p2, :cond_0

    .line 128
    sget-object p2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v1, "update RC returned null result, something went wrong!"

    invoke-virtual {p2, v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 129
    sget-object p2, Lcom/appsflyer/internal/AFf1lSDK;->values:Lcom/appsflyer/internal/AFf1lSDK;

    .line 132
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFf1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1lSDK;

    if-eq p2, v0, :cond_1

    .line 3123
    iget-object v0, p1, Lcom/appsflyer/internal/AFf1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1iSDK;

    .line 4078
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v1

    .line 4079
    :try_start_0
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1iSDK;

    .line 4080
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 4119
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/appsflyer/internal/AFf1hSDK;->d:Lcom/appsflyer/internal/AFf1iSDK;

    .line 135
    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFf1eSDK;->values(Lcom/appsflyer/internal/AFf1lSDK;Lcom/appsflyer/internal/AFf1iSDK;)V

    :cond_2
    return-void
.end method

.method public final values(Lcom/appsflyer/internal/AFe1fSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1fSDK<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final values(Lcom/appsflyer/internal/AFf1iSDK;)V
    .locals 10

    .line 73
    new-instance v9, Lcom/appsflyer/internal/AFf1hSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFf1cSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1rSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1eSDK;->values:Lcom/appsflyer/internal/AFg1zSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFf1eSDK;->valueOf:Lcom/appsflyer/internal/AFf1gSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFLogger:Lcom/appsflyer/internal/AFe1zSDK;

    iget-object v6, p0, Lcom/appsflyer/internal/AFf1eSDK;->d:Lcom/appsflyer/internal/AFf1dSDK;

    const-string v7, "v1"

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/internal/AFf1hSDK;-><init>(Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFf1gSDK;Lcom/appsflyer/internal/AFe1zSDK;Lcom/appsflyer/internal/AFf1dSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFf1iSDK;)V

    .line 74
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->e:Lcom/appsflyer/internal/AFe1dSDK;

    .line 2089
    iget-object v0, p1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v1, p1, v9}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
