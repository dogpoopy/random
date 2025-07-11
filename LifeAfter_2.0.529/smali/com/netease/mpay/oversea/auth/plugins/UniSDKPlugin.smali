.class public Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;
.super Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;
.source "UniSDKPlugin.java"


# static fields
.field public static final CURRENT_QUICK_QR_MODE:Ljava/lang/String; = "CURRENT_QUICK_QR_MODE"

.field public static final CURRENT_SHORTCUT_MAIN_RUNNING:Ljava/lang/String; = "CURRENT_SHORTCUT_MAIN_RUNNING"

.field private static final TAG:Ljava/lang/String; = "UniSDK Plugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;-><init>()V

    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "UniSDK Plugin"

    const-string v1, "Enter init"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "JF_GAMEID"

    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jf_gameId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "CURRENT_SHORTCUT_MAIN_RUNNING"

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method private isNeteaseChannel()Z
    .locals 2

    .line 117
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "netease"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shouldHandleLifecycle()Z
    .locals 1

    .line 101
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->init(Landroid/app/Activity;)V

    .line 23
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onDestroy()V

    .line 63
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CURRENT_SHORTCUT_MAIN_RUNNING"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 71
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onPause()V

    .line 47
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 87
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onResume()V

    .line 39
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onStart()V

    .line 31
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->onStop()V

    .line 55
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/UniSDKPlugin;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStop()V

    :cond_0
    return-void
.end method
