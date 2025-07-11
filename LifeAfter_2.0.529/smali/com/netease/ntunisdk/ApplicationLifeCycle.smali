.class public Lcom/netease/ntunisdk/ApplicationLifeCycle;
.super Lcom/netease/ntunisdk/base/SdkApplication;
.source "ApplicationLifeCycle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "lifeCycle"

    return-object v0
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 3

    const-string p1, "ApplicationLifeCycle"

    const-string v0, "handleOnApplicationOnCreate"

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 33
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->setRegister(Z)V

    .line 34
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->setApkStartTime(J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p2, "application is null"

    .line 36
    invoke-static {p1, p2}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->setRegister(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 40
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->setRegister(Z)V

    :goto_1
    return-void
.end method
