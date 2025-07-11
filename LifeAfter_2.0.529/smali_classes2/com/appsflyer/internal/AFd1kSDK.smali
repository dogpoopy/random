.class public final Lcom/appsflyer/internal/AFd1kSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1nSDK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFd1kSDK$AFa1zSDK;
    }
.end annotation


# static fields
.field private static final valueOf:I


# instance fields
.field public final AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

.field private AFInAppEventType:Ljava/util/concurrent/ExecutorService;

.field private AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

.field private AFLogger:Lcom/appsflyer/internal/AFe1vSDK;

.field private AFLogger$LogLevel:Lcom/appsflyer/internal/AFc1jSDK;

.field private AFVersionDeclaration:Lcom/appsflyer/internal/AFd1vSDK;

.field private AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/AFh1aSDK;

.field private afDebugLog:Lcom/appsflyer/internal/AFb1rSDK;

.field private afErrorLog:Lcom/appsflyer/internal/AFg1zSDK;

.field private afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFd1ySDK;

.field private afInfoLog:Lcom/appsflyer/internal/AFi1fSDK;

.field private afLogForce:Lcom/appsflyer/internal/AFc1eSDK;

.field private afRDLog:Lcom/appsflyer/internal/AFd1fSDK;

.field private afVerboseLog:Lcom/appsflyer/internal/AFi1xSDK;

.field private afWarnLog:Lcom/appsflyer/internal/AFe1jSDK;

.field private d:Lcom/appsflyer/internal/AFg1bSDK;

.field private e:Lcom/appsflyer/internal/AFd1rSDK;

.field private force:Lcom/appsflyer/internal/AFi1kSDK;

.field private getLevel:Lcom/appsflyer/internal/AFh1gSDK;

.field private i:Lcom/appsflyer/internal/AFb1cSDK;

.field private init:Lcom/appsflyer/internal/AFb1zSDK;

.field private onAppOpenAttributionNative:Lcom/appsflyer/internal/AFg1xSDK;

.field private onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

.field private onDeepLinkingNative:Lcom/appsflyer/internal/AFg1sSDK;

.field private onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/AFg1gSDK;

.field private onInstallConversionFailureNative:Lcom/appsflyer/internal/AFc1kSDK;

.field private registerClient:Lcom/appsflyer/PurchaseHandler;

.field private unregisterClient:Lcom/appsflyer/internal/AFf1eSDK;

.field private v:Lcom/appsflyer/internal/AFe1dSDK;

.field private values:Ljava/util/concurrent/ExecutorService;

.field private w:Lcom/appsflyer/internal/AFg1qSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/appsflyer/internal/AFd1lSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1lSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    return-void
.end method

.method public static synthetic lambda$54zOpkxJZ7vchUFO_SUqd6OVNQ0(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFd1kSDK;->valueOf(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method private declared-synchronized onAppOpenAttributionNative()Lcom/appsflyer/internal/AFe1vSDK;
    .locals 3

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFLogger:Lcom/appsflyer/internal/AFe1vSDK;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/appsflyer/internal/AFe1vSDK;

    .line 1151
    new-instance v1, Lcom/appsflyer/internal/AFe1sSDK;

    sget v2, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:I

    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFe1sSDK;-><init>(I)V

    .line 143
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFe1vSDK;-><init>(Lcom/appsflyer/internal/AFe1sSDK;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFLogger:Lcom/appsflyer/internal/AFe1vSDK;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFLogger:Lcom/appsflyer/internal/AFe1vSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onAttributionFailureNative()Lcom/appsflyer/internal/AFd1fSDK;
    .locals 1

    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afRDLog:Lcom/appsflyer/internal/AFd1fSDK;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/appsflyer/internal/AFd1fSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFd1fSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afRDLog:Lcom/appsflyer/internal/AFd1fSDK;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afRDLog:Lcom/appsflyer/internal/AFd1fSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onInstallConversionFailureNative()Ljava/util/concurrent/ExecutorService;
    .locals 2

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 2033
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onResponseNative()Lcom/appsflyer/internal/AFg1sSDK;
    .locals 3

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onDeepLinkingNative:Lcom/appsflyer/internal/AFg1sSDK;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/appsflyer/internal/AFg1sSDK;

    .line 242
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    .line 243
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFg1sSDK;-><init>(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1rSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onDeepLinkingNative:Lcom/appsflyer/internal/AFg1sSDK;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onDeepLinkingNative:Lcom/appsflyer/internal/AFg1sSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic valueOf(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 513
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "could not create executor for queue"

    .line 515
    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1zSDK;
    .locals 5

    .line 131
    new-instance v0, Lcom/appsflyer/internal/AFe1zSDK;

    .line 132
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1kSDK;->onAppOpenAttributionNative()Lcom/appsflyer/internal/AFe1vSDK;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v2

    .line 134
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    .line 135
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/AFe1zSDK;-><init>(Lcom/appsflyer/internal/AFe1vSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/internal/AFe1jSDK;)V

    return-object v0
.end method

.method public final declared-synchronized AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;
    .locals 4

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->e:Lcom/appsflyer/internal/AFd1rSDK;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lcom/appsflyer/internal/AFd1rSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    .line 3194
    new-instance v2, Lcom/appsflyer/internal/AFd1pSDK;

    .line 3211
    iget-object v3, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    .line 4025
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 3194
    invoke-static {v3}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appsflyer/internal/AFd1pSDK;-><init>(Landroid/content/SharedPreferences;)V

    .line 186
    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFd1rSDK;-><init>(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->e:Lcom/appsflyer/internal/AFd1rSDK;

    goto :goto_0

    .line 3213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->e:Lcom/appsflyer/internal/AFd1rSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;
    .locals 2

    .line 194
    new-instance v0, Lcom/appsflyer/internal/AFd1pSDK;

    .line 4211
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    .line 5025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 194
    invoke-static {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFd1pSDK;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0

    .line 4213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final AFLogger()Lcom/appsflyer/internal/AFi1fSDK;
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1fSDK;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Lcom/appsflyer/internal/AFi1hSDK;

    .line 13211
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    .line 14025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionFailureNative()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFi1hSDK;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1fSDK;

    goto :goto_0

    .line 13213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1fSDK;

    return-object v0
.end method

.method public final AFLogger$LogLevel()Lcom/appsflyer/internal/AFh1gSDK;
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->getLevel:Lcom/appsflyer/internal/AFh1gSDK;

    if-nez v0, :cond_1

    .line 400
    new-instance v0, Lcom/appsflyer/internal/AFh1gSDK;

    .line 15211
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    .line 16025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 400
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFh1gSDK;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->getLevel:Lcom/appsflyer/internal/AFh1gSDK;

    goto :goto_0

    .line 15213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->getLevel:Lcom/appsflyer/internal/AFh1gSDK;

    return-object v0
.end method

.method public final AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/AFg1gSDK;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/appsflyer/internal/AFg1eSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFg1eSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/AFg1gSDK;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/AFg1gSDK;

    return-object v0
.end method

.method public final AppsFlyer2dXConversionCallback()Lcom/appsflyer/internal/AFc1kSDK;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionFailureNative:Lcom/appsflyer/internal/AFc1kSDK;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFc1pSDK;-><init>(Lcom/appsflyer/internal/AFd1xSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionFailureNative:Lcom/appsflyer/internal/AFc1kSDK;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionFailureNative:Lcom/appsflyer/internal/AFc1kSDK;

    return-object v0
.end method

.method public final declared-synchronized afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;
    .locals 2

    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afLogForce:Lcom/appsflyer/internal/AFc1eSDK;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/appsflyer/internal/AFc1gSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFc1gSDK;-><init>(Lcom/appsflyer/internal/AFd1lSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afLogForce:Lcom/appsflyer/internal/AFc1eSDK;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afLogForce:Lcom/appsflyer/internal/AFc1eSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;
    .locals 1

    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFc1jSDK;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lcom/appsflyer/internal/AFc1jSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFc1jSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFc1jSDK;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFc1jSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final afErrorLogForExcManagerOnly()Lcom/appsflyer/internal/AFh1aSDK;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/AFh1aSDK;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/appsflyer/internal/AFi1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFi1uSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/AFh1aSDK;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/AFh1aSDK;

    return-object v0
.end method

.method public final declared-synchronized afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;
    .locals 1

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->i:Lcom/appsflyer/internal/AFb1cSDK;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/appsflyer/internal/AFb1hSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFb1hSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->i:Lcom/appsflyer/internal/AFb1cSDK;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->i:Lcom/appsflyer/internal/AFb1cSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final afLogForce()Lcom/appsflyer/internal/AFd1ySDK;
    .locals 5

    .line 435
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFd1ySDK;

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Lcom/appsflyer/internal/AFd1uSDK;

    .line 437
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionFailureNative()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 438
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 439
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v3

    .line 16417
    iget-object v4, p0, Lcom/appsflyer/internal/AFd1kSDK;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/AFh1aSDK;

    if-nez v4, :cond_0

    .line 16418
    new-instance v4, Lcom/appsflyer/internal/AFi1uSDK;

    invoke-direct {v4}, Lcom/appsflyer/internal/AFi1uSDK;-><init>()V

    iput-object v4, p0, Lcom/appsflyer/internal/AFd1kSDK;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/AFh1aSDK;

    .line 16420
    :cond_0
    iget-object v4, p0, Lcom/appsflyer/internal/AFd1kSDK;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/AFh1aSDK;

    .line 440
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/AFd1uSDK;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFc1jSDK;Lcom/appsflyer/internal/AFh1aSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFd1ySDK;

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFd1ySDK;

    return-object v0
.end method

.method public final declared-synchronized afRDLog()Lcom/appsflyer/internal/AFb1rSDK;
    .locals 2

    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afDebugLog:Lcom/appsflyer/internal/AFb1rSDK;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/appsflyer/internal/AFb1iSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFb1iSDK;-><init>(Lcom/appsflyer/internal/AFd1lSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afDebugLog:Lcom/appsflyer/internal/AFb1rSDK;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afDebugLog:Lcom/appsflyer/internal/AFb1rSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;
    .locals 3

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFe1jSDK;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/appsflyer/internal/AFe1jSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFe1jSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFd1xSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFe1jSDK;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFe1jSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final afWarnLog()Lcom/appsflyer/internal/AFi1xSDK;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afVerboseLog:Lcom/appsflyer/internal/AFi1xSDK;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/appsflyer/internal/AFi1vSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFi1vSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afVerboseLog:Lcom/appsflyer/internal/AFi1xSDK;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afVerboseLog:Lcom/appsflyer/internal/AFi1xSDK;

    return-object v0
.end method

.method public final d()Lcom/appsflyer/internal/AFg1qSDK;
    .locals 17

    move-object/from16 v0, p0

    .line 260
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1kSDK;->w:Lcom/appsflyer/internal/AFg1qSDK;

    if-nez v1, :cond_9

    .line 261
    new-instance v1, Lcom/appsflyer/internal/AFg1nSDK;

    .line 5211
    iget-object v2, v0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    .line 6025
    iget-object v3, v2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    const-string v2, "Context must be set via setContext method before calling this dependency."

    if-eqz v3, :cond_8

    .line 6363
    iget-object v4, v0, Lcom/appsflyer/internal/AFd1kSDK;->afVerboseLog:Lcom/appsflyer/internal/AFi1xSDK;

    if-nez v4, :cond_0

    .line 6364
    new-instance v4, Lcom/appsflyer/internal/AFi1vSDK;

    invoke-direct {v4}, Lcom/appsflyer/internal/AFi1vSDK;-><init>()V

    iput-object v4, v0, Lcom/appsflyer/internal/AFd1kSDK;->afVerboseLog:Lcom/appsflyer/internal/AFi1xSDK;

    .line 6366
    :cond_0
    iget-object v4, v0, Lcom/appsflyer/internal/AFd1kSDK;->afVerboseLog:Lcom/appsflyer/internal/AFi1xSDK;

    .line 6390
    iget-object v5, v0, Lcom/appsflyer/internal/AFd1kSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1vSDK;

    if-nez v5, :cond_1

    .line 6391
    new-instance v5, Lcom/appsflyer/internal/AFa1tSDK;

    invoke-direct {v5}, Lcom/appsflyer/internal/AFa1tSDK;-><init>()V

    iput-object v5, v0, Lcom/appsflyer/internal/AFd1kSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1vSDK;

    .line 6393
    :cond_1
    iget-object v5, v0, Lcom/appsflyer/internal/AFd1kSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1vSDK;

    .line 7284
    iget-object v6, v0, Lcom/appsflyer/internal/AFd1kSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1fSDK;

    if-nez v6, :cond_3

    .line 7285
    new-instance v6, Lcom/appsflyer/internal/AFi1hSDK;

    .line 8211
    iget-object v7, v0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    .line 9025
    iget-object v7, v7, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-eqz v7, :cond_2

    .line 7285
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1kSDK;->onInstallConversionFailureNative()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/appsflyer/internal/AFi1hSDK;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v6, v0, Lcom/appsflyer/internal/AFd1kSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1fSDK;

    goto :goto_0

    .line 8213
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7287
    :cond_3
    :goto_0
    iget-object v6, v0, Lcom/appsflyer/internal/AFd1kSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1fSDK;

    .line 9408
    iget-object v7, v0, Lcom/appsflyer/internal/AFd1kSDK;->init:Lcom/appsflyer/internal/AFb1zSDK;

    if-nez v7, :cond_4

    .line 9409
    new-instance v7, Lcom/appsflyer/internal/AFa1bSDK;

    invoke-direct {v7}, Lcom/appsflyer/internal/AFa1bSDK;-><init>()V

    iput-object v7, v0, Lcom/appsflyer/internal/AFd1kSDK;->init:Lcom/appsflyer/internal/AFb1zSDK;

    .line 9411
    :cond_4
    iget-object v7, v0, Lcom/appsflyer/internal/AFd1kSDK;->init:Lcom/appsflyer/internal/AFb1zSDK;

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1kSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object v8

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v9

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v10

    .line 10399
    iget-object v11, v0, Lcom/appsflyer/internal/AFd1kSDK;->getLevel:Lcom/appsflyer/internal/AFh1gSDK;

    if-nez v11, :cond_6

    .line 10400
    new-instance v11, Lcom/appsflyer/internal/AFh1gSDK;

    .line 11211
    iget-object v12, v0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    .line 12025
    iget-object v12, v12, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-eqz v12, :cond_5

    .line 10400
    invoke-direct {v11, v12}, Lcom/appsflyer/internal/AFh1gSDK;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/appsflyer/internal/AFd1kSDK;->getLevel:Lcom/appsflyer/internal/AFh1gSDK;

    goto :goto_1

    .line 11213
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10402
    :cond_6
    :goto_1
    iget-object v11, v0, Lcom/appsflyer/internal/AFd1kSDK;->getLevel:Lcom/appsflyer/internal/AFh1gSDK;

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1kSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v12

    new-instance v13, Lcom/appsflyer/internal/AFb1gSDK;

    invoke-direct {v13}, Lcom/appsflyer/internal/AFb1gSDK;-><init>()V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1kSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v14

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1kSDK;->onResponseNative()Lcom/appsflyer/internal/AFg1sSDK;

    move-result-object v15

    .line 12426
    iget-object v2, v0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    if-nez v2, :cond_7

    .line 12427
    new-instance v2, Lcom/appsflyer/internal/AFd1sSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFd1sSDK;-><init>()V

    iput-object v2, v0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    .line 12429
    :cond_7
    iget-object v2, v0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    move-object/from16 v16, v2

    move-object v2, v1

    .line 275
    invoke-direct/range {v2 .. v16}, Lcom/appsflyer/internal/AFg1nSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFi1xSDK;Lcom/appsflyer/internal/AFd1vSDK;Lcom/appsflyer/internal/AFi1fSDK;Lcom/appsflyer/internal/AFb1zSDK;Lcom/appsflyer/internal/AFg1bSDK;Lcom/appsflyer/internal/AFd1xSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFh1gSDK;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFb1gSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFg1sSDK;Lcom/appsflyer/internal/AFd1sSDK;)V

    iput-object v1, v0, Lcom/appsflyer/internal/AFd1kSDK;->w:Lcom/appsflyer/internal/AFg1qSDK;

    goto :goto_2

    .line 5213
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1kSDK;->w:Lcom/appsflyer/internal/AFg1qSDK;

    return-object v1
.end method

.method public final declared-synchronized e()Lcom/appsflyer/internal/AFf1eSDK;
    .locals 11

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->unregisterClient:Lcom/appsflyer/internal/AFf1eSDK;

    if-nez v0, :cond_0

    .line 222
    new-instance v5, Lcom/appsflyer/internal/AFf1gSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/appsflyer/internal/AFf1gSDK;-><init>(Lcom/appsflyer/internal/AFd1xSDK;)V

    .line 223
    new-instance v7, Lcom/appsflyer/internal/AFf1dSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    invoke-direct {v7, v0, v5}, Lcom/appsflyer/internal/AFf1dSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFf1gSDK;)V

    .line 224
    new-instance v0, Lcom/appsflyer/internal/AFf1eSDK;

    new-instance v2, Lcom/appsflyer/internal/AFf1cSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFf1cSDK;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v3

    .line 227
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v4

    .line 5131
    new-instance v6, Lcom/appsflyer/internal/AFe1zSDK;

    .line 5132
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1kSDK;->onAppOpenAttributionNative()Lcom/appsflyer/internal/AFe1vSDK;

    move-result-object v1

    .line 5133
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v8

    .line 5134
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    .line 5135
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object v10

    invoke-direct {v6, v1, v8, v9, v10}, Lcom/appsflyer/internal/AFe1zSDK;-><init>(Lcom/appsflyer/internal/AFe1vSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/internal/AFe1jSDK;)V

    .line 231
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/internal/AFf1eSDK;-><init>(Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFf1gSDK;Lcom/appsflyer/internal/AFe1zSDK;Lcom/appsflyer/internal/AFf1dSDK;Lcom/appsflyer/internal/AFe1dSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->unregisterClient:Lcom/appsflyer/internal/AFf1eSDK;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->unregisterClient:Lcom/appsflyer/internal/AFf1eSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized force()Lcom/appsflyer/internal/AFi1kSDK;
    .locals 1

    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->force:Lcom/appsflyer/internal/AFi1kSDK;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lcom/appsflyer/internal/AFi1kSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFi1kSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->force:Lcom/appsflyer/internal/AFi1kSDK;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->force:Lcom/appsflyer/internal/AFi1kSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getLevel()Lcom/appsflyer/internal/AFd1sSDK;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/appsflyer/internal/AFd1sSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1sSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    return-object v0
.end method

.method public final declared-synchronized i()Lcom/appsflyer/internal/AFg1zSDK;
    .locals 3

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1zSDK;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/appsflyer/internal/AFg1zSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFf1bSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFf1bSDK;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFg1zSDK;-><init>(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFf1bSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1zSDK;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1zSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic init()Lcom/appsflyer/internal/AFd1iSDK;
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1kSDK;->onAttributionFailureNative()Lcom/appsflyer/internal/AFd1fSDK;

    move-result-object v0

    return-object v0
.end method

.method public final onInstallConversionDataLoadedNative()Lcom/appsflyer/internal/AFg1xSDK;
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onAppOpenAttributionNative:Lcom/appsflyer/internal/AFg1xSDK;

    if-nez v0, :cond_2

    .line 457
    new-instance v0, Lcom/appsflyer/internal/AFg1ySDK;

    new-instance v1, Lcom/appsflyer/internal/AFg1wSDK;

    .line 17211
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    .line 18025
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 460
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appsflyer/internal/AFg1wSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/AppsFlyerProperties;)V

    .line 18426
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    if-nez v2, :cond_0

    .line 18427
    new-instance v2, Lcom/appsflyer/internal/AFd1sSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFd1sSDK;-><init>()V

    iput-object v2, p0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    .line 18429
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1kSDK;->onConversionDataSuccess:Lcom/appsflyer/internal/AFd1sSDK;

    .line 463
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFg1ySDK;-><init>(Lcom/appsflyer/internal/AFf1aSDK;Lcom/appsflyer/internal/AFd1sSDK;Lcom/appsflyer/AppsFlyerProperties;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onAppOpenAttributionNative:Lcom/appsflyer/internal/AFg1xSDK;

    goto :goto_0

    .line 17213
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->onAppOpenAttributionNative:Lcom/appsflyer/internal/AFg1xSDK;

    return-object v0
.end method

.method public final declared-synchronized registerClient()Lcom/appsflyer/PurchaseHandler;
    .locals 1

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->registerClient:Lcom/appsflyer/PurchaseHandler;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/appsflyer/PurchaseHandler;

    invoke-direct {v0, p0}, Lcom/appsflyer/PurchaseHandler;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->registerClient:Lcom/appsflyer/PurchaseHandler;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->registerClient:Lcom/appsflyer/PurchaseHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;
    .locals 2

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->d:Lcom/appsflyer/internal/AFg1bSDK;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/appsflyer/internal/AFg1bSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1bSDK;-><init>(Lcom/appsflyer/internal/AFd1xSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->d:Lcom/appsflyer/internal/AFg1bSDK;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->d:Lcom/appsflyer/internal/AFg1bSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized v()Lcom/appsflyer/internal/AFd1lSDK;
    .locals 1

    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized valueOf()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 3030
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized values()Ljava/util/concurrent/ExecutorService;
    .locals 8

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->values:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 2017
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    .line 2021
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2022
    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    move-object v1, v0

    .line 2017
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 158
    iput-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->values:Ljava/util/concurrent/ExecutorService;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->values:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w()Lcom/appsflyer/internal/AFe1dSDK;
    .locals 9

    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->v:Lcom/appsflyer/internal/AFe1dSDK;

    if-nez v0, :cond_0

    .line 14494
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x6

    const-wide/16 v4, 0x12c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/appsflyer/internal/AFd1kSDK$3;

    invoke-direct {v7}, Lcom/appsflyer/internal/AFd1kSDK$3;-><init>()V

    new-instance v8, Lcom/appsflyer/internal/AFd1kSDK$AFa1zSDK;

    invoke-direct {v8}, Lcom/appsflyer/internal/AFd1kSDK$AFa1zSDK;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 14511
    sget-object v1, Lcom/appsflyer/internal/-$$Lambda$AFd1kSDK$54zOpkxJZ7vchUFO_SUqd6OVNQ0;->INSTANCE:Lcom/appsflyer/internal/-$$Lambda$AFd1kSDK$54zOpkxJZ7vchUFO_SUqd6OVNQ0;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 295
    new-instance v1, Lcom/appsflyer/internal/AFe1dSDK;

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFe1dSDK;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/appsflyer/internal/AFd1kSDK;->v:Lcom/appsflyer/internal/AFe1dSDK;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->v:Lcom/appsflyer/internal/AFe1dSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
