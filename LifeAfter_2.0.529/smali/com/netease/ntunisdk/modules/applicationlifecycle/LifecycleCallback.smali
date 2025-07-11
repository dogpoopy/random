.class public Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;
.super Ljava/lang/Object;
.source "LifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static mInstance:Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;


# instance fields
.field private applicationLifecycleModule:Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;

.field private mApkStartTime:J

.field private mFrontNums:I

.field private mIsForeground:Z

.field private mIsRegister:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mIsRegister:Z

    .line 13
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mIsForeground:Z

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mApkStartTime:J

    .line 23
    iput v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mFrontNums:I

    return-void
.end method

.method private callbackRes()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->applicationLifecycleModule:Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;

    if-eqz v0, :cond_0

    .line 111
    iget-boolean v1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mIsForeground:Z

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callbackRes(Z)V

    :cond_0
    return-void
.end method

.method private callbackRes(ILjava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->applicationLifecycleModule:Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callActivityLife(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;
    .locals 1

    .line 17
    sget-object v0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mInstance:Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    invoke-direct {v0}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mInstance:Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    .line 20
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mInstance:Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    return-object v0
.end method


# virtual methods
.method public getApkStartTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mApkStartTime:J

    return-wide v0
.end method

.method public isIsForeground()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mIsForeground:Z

    return v0
.end method

.method public isRegister()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mIsRegister:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LifecycleModule"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes(ILjava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes(ILjava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes(ILjava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes(ILjava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    invoke-direct {p0, p2, p1}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes(ILjava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mFrontNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mFrontNums:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mFrontNums:I

    if-ne v0, v1, :cond_0

    .line 63
    iput-boolean v1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mIsForeground:Z

    .line 64
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes()V

    :cond_0
    const/4 v0, 0x2

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes(ILjava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mFrontNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mFrontNums:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mFrontNums:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mIsForeground:Z

    .line 90
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes()V

    :cond_0
    const/4 v0, 0x3

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->callbackRes(ILjava/lang/String;)V

    return-void
.end method

.method public registerCallback(Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->applicationLifecycleModule:Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;

    return-void
.end method

.method public setApkStartTime(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mApkStartTime:J

    return-void
.end method

.method public setRegister(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->mIsRegister:Z

    return-void
.end method
