.class public Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;
.super Ljava/lang/Object;
.source "PluginExecutor.java"

# interfaces
.implements Lcom/netease/mpay/oversea/auth/plugins/Lifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;,
        Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginExecutor"

.field private static sInstance:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;


# instance fields
.field private mActive:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

.field mLifecycleState:I

.field final mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mPrePluginResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

.field final mRunOnResumeTasks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mSavedInstanceState:Landroid/os/Bundle;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mRunOnResumeTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    return-void
.end method

.method static synthetic access$002(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mPrePluginResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    return-object p1
.end method

.method private dispatchLifecycleEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    .line 238
    invoke-direct {p0, p1, v1, p2}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->executeLifecycleEvent(ILcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private executeLifecycleEvent(ILcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->getLifecycleState()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 264
    :pswitch_0
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onDestroy()V

    goto :goto_0

    .line 261
    :pswitch_1
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onStop()V

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onPause()V

    goto :goto_0

    .line 255
    :pswitch_3
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onResume()V

    goto :goto_0

    .line 252
    :pswitch_4
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onStart()V

    goto :goto_0

    .line 249
    :pswitch_5
    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;
    .locals 2

    .line 33
    sget-object v0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->sInstance:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->sInstance:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->sInstance:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->sInstance:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    return-object v0
.end method


# virtual methods
.method public dispatchOnResumeTask()V
    .locals 2

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$2;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$2;-><init>(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized execute(Lcom/netease/mpay/oversea/auth/plugins/Plugin;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 51
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "PluginExecutor"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".execute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    new-instance v2, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$1;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->getCallback()Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$1;-><init>(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V

    invoke-direct {v1, p1, v2}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;-><init>(Lcom/netease/mpay/oversea/auth/plugins/Plugin;Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mActive:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mPrePluginResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->scheduleNext(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    .line 66
    :cond_1
    instance-of v0, p1, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    iget p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 69
    iget p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchLifecycleEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    .line 232
    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    .line 218
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 164
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mSavedInstanceState:Landroid/os/Bundle;

    .line 166
    iput v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    .line 167
    iget p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchLifecycleEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x6

    .line 204
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    .line 205
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchLifecycleEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    .line 211
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x4

    .line 192
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    .line 193
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchLifecycleEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    .line 225
    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    .line 173
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onRestart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x3

    .line 185
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    .line 186
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchLifecycleEvent(ILandroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchOnResumeTask()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v0, 0x2

    .line 179
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    .line 180
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchLifecycleEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x5

    .line 198
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    .line 199
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchLifecycleEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public declared-synchronized postRunOnResume(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 75
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mRunOnResumeTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycleState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchOnResumeTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 44
    :try_start_0
    iput-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mActive:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    .line 45
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 46
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mLifecycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 47
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mRunOnResumeTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    iput-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mActive:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mActive:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    invoke-static {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->access$100(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->isNeedSuccessBeforeExecute()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mActive:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    .line 144
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 145
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mPrePluginResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 150
    :try_start_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mPrePluginResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    if-nez p1, :cond_1

    .line 151
    sget p1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_SUCCESS:I

    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mActive:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    invoke-static {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->access$100(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mPrePluginResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mPrePluginResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mActive:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->execute(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
