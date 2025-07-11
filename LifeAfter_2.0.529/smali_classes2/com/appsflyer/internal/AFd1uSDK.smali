.class public final Lcom/appsflyer/internal/AFd1uSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1ySDK;


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1aSDK;

.field private AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1jSDK;

.field private final valueOf:Ljava/util/concurrent/Executor;

.field private final values:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFc1jSDK;Lcom/appsflyer/internal/AFh1aSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1uSDK;->valueOf:Ljava/util/concurrent/Executor;

    .line 19
    iput-object p2, p0, Lcom/appsflyer/internal/AFd1uSDK;->values:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    iput-object p3, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1jSDK;

    .line 21
    iput-object p4, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1aSDK;

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1wSDK;->values:Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;->AFInAppEventParameterName()V

    :cond_0
    return-void
.end method

.method public final AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;)V
    .locals 7

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

    if-eqz v0, :cond_1

    .line 1052
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Application;

    .line 1053
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 1052
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.app.Application"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1055
    iput-object v0, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

    .line 33
    new-instance v0, Lcom/appsflyer/internal/AFd1wSDK;

    .line 34
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1uSDK;->valueOf:Ljava/util/concurrent/Executor;

    .line 35
    iget-object v3, p0, Lcom/appsflyer/internal/AFd1uSDK;->values:Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    iget-object v4, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1jSDK;

    .line 37
    iget-object v5, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1aSDK;

    move-object v1, v0

    move-object v6, p2

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFd1wSDK;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFc1jSDK;Lcom/appsflyer/internal/AFh1aSDK;Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

    .line 41
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 44
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/appsflyer/internal/AFd1wSDK;->onActivityResumed(Landroid/app/Activity;)V

    .line 46
    :cond_2
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1qSDK;->values(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 47
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

    check-cast p2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_3
    return-void
.end method

.method public final valueOf()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1wSDK;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
