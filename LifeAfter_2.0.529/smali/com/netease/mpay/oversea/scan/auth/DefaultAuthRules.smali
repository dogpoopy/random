.class public Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;
.super Ljava/lang/Object;
.source "DefaultAuthRules.java"

# interfaces
.implements Lcom/netease/mpay/oversea/auth/Rule;
.implements Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScannerAuth"

.field private static sInstance:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;


# instance fields
.field private hasLogin:Z

.field public isGameActivityPaused:Z

.field private isStartLoginByScanner:Z

.field private lastUid:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field public mAuthCallback:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;

.field public mExecuteCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field public mLoginCallback:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;

.field private mUniSDKProxy:Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->hasLogin:Z

    .line 40
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isGameActivityPaused:Z

    .line 140
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mExecuteCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/Utils;->isSupportProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mUniSDKProxy:Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;

    .line 54
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mUniSDKProxy:Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setUniSDKProxy(Lcom/netease/ntunisdk/external/protocol/UniSDKProxy;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;
    .locals 2

    .line 78
    sget-object v0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->sInstance:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    if-nez v0, :cond_0

    .line 79
    const-class v0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    monitor-enter v0

    .line 80
    :try_start_0
    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->sInstance:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    .line 81
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_0
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->sInstance:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    return-object v0
.end method

.method private killProcess()V
    .locals 2

    const-string v0, "ScannerAuth"

    const-string v1, "kill Game"

    .line 135
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 137
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mExecuteCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public attachActivity(Landroid/app/Activity;)Lcom/netease/mpay/oversea/auth/Rule;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 107
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    :cond_0
    return-object p0
.end method

.method public getDecodedData()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "decoded_data"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLastUid()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->lastUid:Ljava/lang/String;

    return-object v0
.end method

.method public hasRunning()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mUniSDKProxy:Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;->hasAppRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(Landroid/content/Intent;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public isGameActivityPaused()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isGameActivityPaused:Z

    return v0
.end method

.method public declared-synchronized isHasLogin()Z
    .locals 1

    monitor-enter p0

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->hasLogin:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStartLoginByScanner()Z
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isStartLoginByScanner:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyAuthDone(I)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mAuthCallback:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 166
    invoke-interface {v0, p1, v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;->onFinish(ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public notifyLoginDone(I)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mLoginCallback:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 154
    invoke-interface {v0, p1, v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;->onFinish(ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->isEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScannerAuth"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-boolean p1, p1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->isEnd:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->killProcess()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->killProcess()V

    goto :goto_0

    :cond_1
    const-string p1, "return Game"

    .line 129
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mExecuteCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAuthCallback(Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mAuthCallback:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;

    return-void
.end method

.method public setGameActivityPaused(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isGameActivityPaused:Z

    return-void
.end method

.method public declared-synchronized setHasLogin(Z)V
    .locals 0

    monitor-enter p0

    .line 193
    :try_start_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->hasLogin:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLastUid(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->lastUid:Ljava/lang/String;

    return-void
.end method

.method public setLoginCallback(Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mLoginCallback:Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;

    return-void
.end method

.method public declared-synchronized setStartLoginByScanner(Z)V
    .locals 0

    monitor-enter p0

    .line 47
    :try_start_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isStartLoginByScanner:Z
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

.method public start()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->reset()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isStartLoginByScanner:Z

    .line 94
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mUniSDKProxy:Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/auth/AuthUniProxy;->setRunning(Z)V

    .line 97
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->setActivity(Landroid/app/Activity;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->addCallback(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->execute(Lcom/netease/mpay/oversea/auth/plugins/Plugin;)V

    .line 98
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/DecisionPlugin;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/scan/auth/DecisionPlugin;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/scan/auth/DecisionPlugin;->setActivity(Landroid/app/Activity;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->addCallback(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->execute(Lcom/netease/mpay/oversea/auth/plugins/Plugin;)V

    .line 99
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->setActivity(Landroid/app/Activity;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->addCallback(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->execute(Lcom/netease/mpay/oversea/auth/plugins/Plugin;)V

    .line 100
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->setActivity(Landroid/app/Activity;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->addCallback(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->execute(Lcom/netease/mpay/oversea/auth/plugins/Plugin;)V

    .line 101
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/scan/auth/AuthPlugin;->setActivity(Landroid/app/Activity;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->addCallback(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->execute(Lcom/netease/mpay/oversea/auth/plugins/Plugin;)V

    return-void

    .line 89
    :cond_2
    :goto_0
    sget v0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_FAILED:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    return-void
.end method
