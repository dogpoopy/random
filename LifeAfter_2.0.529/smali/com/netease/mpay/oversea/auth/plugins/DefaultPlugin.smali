.class public abstract Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;
.super Ljava/lang/Object;
.source "DefaultPlugin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/auth/plugins/Plugin;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mOnNextListener:Lcom/netease/mpay/oversea/auth/plugins/OnNextListener;

.field protected mPluginCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

.field protected mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;->mPluginCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    return-object p0
.end method

.method public addOnNextListener(Lcom/netease/mpay/oversea/auth/plugins/OnNextListener;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;->mOnNextListener:Lcom/netease/mpay/oversea/auth/plugins/OnNextListener;

    return-object p0
.end method

.method public addPreTaskResult(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;->mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    return-void
.end method

.method public getCallback()Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;->mPluginCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    return-object v0
.end method

.method public isEndNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedSuccessBeforeExecute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public postOnResume(Ljava/lang/Runnable;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->postRunOnResume(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;->mActivity:Landroid/app/Activity;

    return-object p0
.end method
