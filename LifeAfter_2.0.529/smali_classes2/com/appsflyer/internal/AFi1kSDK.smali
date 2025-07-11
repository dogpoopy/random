.class public final Lcom/appsflyer/internal/AFi1kSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFi1nSDK;",
            ">;"
        }
    .end annotation
.end field

.field public final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    return-void
.end method

.method private synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v1

    .line 2164
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v2, 0x0

    const-string v3, "appsFlyerCount"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "newGPReferrerSent"

    .line 176
    invoke-interface {v0, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v0

    .line 3052
    iget-object p1, p1, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 179
    sget-object v3, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->valueOf:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-ne v1, v4, :cond_2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 181
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic AFInAppEventType(Ljava/lang/Runnable;)V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$XcjpLMUnVECnAxB58RxsFDozdtI;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$XcjpLMUnVECnAxB58RxsFDozdtI;-><init>(Lcom/appsflyer/internal/AFi1kSDK;Ljava/lang/Runnable;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/appsflyer/internal/AFi1bSDK;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static synthetic AFKeystoreWrapper()V
    .locals 0

    return-void
.end method

.method private synthetic AFKeystoreWrapper(Ljava/lang/Runnable;)V
    .locals 1

    .line 137
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/AFh1wSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1wSDK;-><init>()V

    .line 138
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$1AA1d1KyqLEdWjhmPVkauADAZLI(Lcom/appsflyer/internal/AFi1kSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$LQ5v_7-_jJZceDc1zxWbe2TBuc0(Lcom/appsflyer/internal/AFi1kSDK;Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$XcjpLMUnVECnAxB58RxsFDozdtI(Lcom/appsflyer/internal/AFi1kSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$fhlFkcpy2_19QgLs_wWsGmn-A14()V
    .locals 0

    invoke-static {}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper()V

    return-void
.end method

.method public static synthetic lambda$nxeM0WttnYGDHTCFgXsaINhT7xo(Lcom/appsflyer/internal/AFi1kSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1kSDK;->valueOf(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic valueOf(Ljava/lang/Runnable;)V
    .locals 7

    .line 3097
    new-instance v6, Lcom/appsflyer/internal/AFi1qSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    .line 3098
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v1

    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    .line 3099
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFi1rSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1rSDK;

    sget-object v5, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$fhlFkcpy2_19QgLs_wWsGmn-A14;->INSTANCE:Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$fhlFkcpy2_19QgLs_wWsGmn-A14;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFi1qSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFi1rSDK;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3104
    invoke-virtual {p0, v6}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 3105
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object p1

    .line 4025
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 3105
    invoke-virtual {v6, p1}, Lcom/appsflyer/internal/AFi1nSDK;->values(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/Runnable;)Lcom/appsflyer/internal/AFi1pSDK;
    .locals 3

    .line 133
    new-instance v0, Lcom/appsflyer/internal/AFi1pSDK;

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$1AA1d1KyqLEdWjhmPVkauADAZLI;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$1AA1d1KyqLEdWjhmPVkauADAZLI;-><init>(Lcom/appsflyer/internal/AFi1kSDK;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    .line 148
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    .line 149
    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/appsflyer/internal/AFi1pSDK;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFd1rSDK;)V

    return-object v0
.end method

.method public final AFInAppEventParameterName()Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    const-string v1, "AF_PREINSTALL_DISABLED"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)Z
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    .line 1164
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v1, 0x0

    const-string v2, "appsFlyerCount"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 163
    instance-of p1, p1, Lcom/appsflyer/internal/AFh1wSDK;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v3

    const-string v4, "newGPReferrerSent"

    invoke-interface {v3, v4}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method public final AFInAppEventType(Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 173
    new-instance v0, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;-><init>(Lcom/appsflyer/internal/AFi1kSDK;Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final declared-synchronized AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFi1nSDK;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFi1nSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final values(Ljava/lang/Runnable;)V
    .locals 7

    .line 87
    new-instance v6, Lcom/appsflyer/internal/AFi1qSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    .line 88
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v1

    iget-object v0, p0, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    .line 89
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFi1rSDK;->valueOf:Lcom/appsflyer/internal/AFi1rSDK;

    new-instance v5, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$nxeM0WttnYGDHTCFgXsaINhT7xo;

    invoke-direct {v5, p0, p1}, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$nxeM0WttnYGDHTCFgXsaINhT7xo;-><init>(Lcom/appsflyer/internal/AFi1kSDK;Ljava/lang/Runnable;)V

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFi1qSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFi1rSDK;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {p0, v6}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    return-void
.end method
