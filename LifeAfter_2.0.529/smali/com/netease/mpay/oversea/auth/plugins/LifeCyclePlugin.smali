.class public Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;
.super Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;
.source "LifeCyclePlugin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/auth/plugins/Lifecycle;


# instance fields
.field mLifecycleState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->getCallback()Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_SUCCESS:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    iget-object v2, v2, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2, p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    return-void
.end method

.method public getLifecycleState()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mLifecycleState:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    const-class v0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mLifecycleState:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x6

    .line 44
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mLifecycleState:I

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x4

    .line 34
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mLifecycleState:I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x3

    .line 29
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mLifecycleState:I

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mLifecycleState:I

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x5

    .line 39
    iput v0, p0, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;->mLifecycleState:I

    return-void
.end method
