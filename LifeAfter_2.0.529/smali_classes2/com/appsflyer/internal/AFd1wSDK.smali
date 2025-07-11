.class final Lcom/appsflyer/internal/AFd1wSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1aSDK;

.field private final AFInAppEventType:Ljava/util/concurrent/Executor;

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1jSDK;

.field private e:Z

.field private unregisterClient:Z

.field private final valueOf:Ljava/util/concurrent/ScheduledExecutorService;

.field final values:Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFc1jSDK;Lcom/appsflyer/internal/AFh1aSDK;Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFInAppEventType:Ljava/util/concurrent/Executor;

    .line 68
    iput-object p2, p0, Lcom/appsflyer/internal/AFd1wSDK;->valueOf:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    iput-object p3, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1jSDK;

    .line 70
    iput-object p4, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1aSDK;

    .line 71
    iput-object p5, p0, Lcom/appsflyer/internal/AFd1wSDK;->values:Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;

    return-void
.end method

.method private static final AFInAppEventType(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 4

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->e:Z

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->valueOf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFd1wSDK$KNw6y0Kav0gINqcoDZeK5vpVQOA;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/-$$Lambda$AFd1wSDK$KNw6y0Kav0gINqcoDZeK5vpVQOA;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 105
    sget-object p0, Lcom/appsflyer/internal/AFd1ySDK;->AFa1zSDK:Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFd1ySDK$AFa1zSDK;->AFKeystoreWrapper()J

    move-result-wide v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    invoke-interface {v0, v1, v2, v3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "Background task failed with a throwable: "

    .line 107
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$6xQb3l6wZ8vLKOxzoPVgaA_PCqA(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFd1wSDK;)V

    return-void
.end method

.method public static synthetic lambda$KNw6y0Kav0gINqcoDZeK5vpVQOA(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->valueOf(Lcom/appsflyer/internal/AFd1wSDK;)V

    return-void
.end method

.method public static synthetic lambda$wdvKNXb_Im6CD8huJWjMt2A2l20(Lcom/appsflyer/internal/AFd1wSDK;Lcom/appsflyer/internal/AFh1zSDK;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFd1wSDK;->valueOf(Lcom/appsflyer/internal/AFd1wSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    return-void
.end method

.method private static final valueOf(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->unregisterClient:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->unregisterClient:Z

    .line 100
    :try_start_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1wSDK;->values:Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;->AFInAppEventParameterName()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 102
    check-cast p0, Ljava/lang/Throwable;

    const-string v0, "Listener threw exception! "

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static final valueOf(Lcom/appsflyer/internal/AFd1wSDK;Lcom/appsflyer/internal/AFh1zSDK;)V
    .locals 2

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->unregisterClient:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->values:Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;->valueOf(Lcom/appsflyer/internal/AFh1zSDK;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Listener thrown an exception: "

    invoke-static {v0, p1, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->e:Z

    .line 88
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFd1wSDK;->unregisterClient:Z

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, ""

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1jSDK;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1199
    iget-object v1, p2, Lcom/appsflyer/internal/AFc1jSDK;->AFKeystoreWrapper:Landroid/content/Intent;

    if-eq v0, v1, :cond_1

    .line 1200
    iput-object v0, p2, Lcom/appsflyer/internal/AFc1jSDK;->AFKeystoreWrapper:Landroid/content/Intent;

    .line 114
    :cond_1
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1aSDK;

    invoke-interface {p2, p1}, Lcom/appsflyer/internal/AFh1aSDK;->values(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFInAppEventType:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appsflyer/internal/-$$Lambda$AFd1wSDK$6xQb3l6wZ8vLKOxzoPVgaA_PCqA;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/-$$Lambda$AFd1wSDK$6xQb3l6wZ8vLKOxzoPVgaA_PCqA;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/appsflyer/internal/AFh1zSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1aSDK;

    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFh1zSDK;-><init>(Landroid/app/Activity;Lcom/appsflyer/internal/AFh1aSDK;)V

    .line 79
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFInAppEventType:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFd1wSDK$wdvKNXb_Im6CD8huJWjMt2A2l20;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/internal/-$$Lambda$AFd1wSDK$wdvKNXb_Im6CD8huJWjMt2A2l20;-><init>(Lcom/appsflyer/internal/AFd1wSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
