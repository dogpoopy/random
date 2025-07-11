.class public Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;
.super Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;
.source "ProtocolPlugin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/auth/plugins/OnNextListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProtocolPlugin"


# instance fields
.field private mWaitingForProtocolCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/DefaultPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mWaitingForProtocolCallback:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    return-object p0
.end method

.method private isProtocolShowing()Z
    .locals 3

    .line 38
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u8bf7UniPack\u4f7f\u7528protocol_12\u53ca\u4ee5\u4e0a\u7248\u672c"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onProtocolFinish()V
    .locals 0

    return-void
.end method

.method private showProtocol(Landroid/app/Activity;Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-direct {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setActivity(Landroid/app/Activity;)V

    .line 52
    new-instance p1, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;

    invoke-direct {p1, p0, v0, p2}, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin$1;-><init>(Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    .line 75
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasAcceptLaunchProtocol()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ProtocolPlugin"

    const-string p2, "Protocol: has accepted "

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ExtendProtocolCallback;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/external/protocol/ExtendProtocolCallback;->onFinish(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch()V

    :goto_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 21
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/Utils;->isSupportProtocol()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mActivity:Landroid/app/Activity;

    .line 22
    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/Utils;->isProtocolLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->isProtocolShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProtocolPlugin"

    const-string v1, "Protocol is showing, finish self"

    .line 24
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mPluginCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    sget v1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_FAILED:I

    invoke-static {v1, p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mPluginCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->showProtocol(Landroid/app/Activity;Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mPluginCallback:Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    sget v1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_SUCCESS:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    iget-object v2, v2, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    invoke-static {v1, v2, p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 110
    const-class v0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNeedSuccessBeforeExecute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNext(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/ProtocolPlugin;->mOnNextListener:Lcom/netease/mpay/oversea/auth/plugins/OnNextListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/OnNextListener;->onNext(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    return-void
.end method
