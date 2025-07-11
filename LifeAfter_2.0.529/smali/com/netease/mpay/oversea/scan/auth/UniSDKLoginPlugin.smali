.class public Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;
.super Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;
.source "UniSDKLoginPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UniSDK AuthLogin"


# instance fields
.field private blockLogin:Z

.field private mOrigin:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

.field private final mReplacedLoginDoneListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

.field private mSdkBase:Lcom/netease/ntunisdk/base/SdkBase;

.field private needLoginOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/plugins/LifeCyclePlugin;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->blockLogin:Z

    .line 41
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->needLoginOnResume:Z

    .line 45
    new-instance v0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;-><init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mReplacedLoginDoneListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->needLoginOnResume:Z

    return p0
.end method

.method static synthetic access$002(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->needLoginOnResume:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->retSuccess()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->login()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mOrigin:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/SdkBase;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mSdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->blockLogin:Z

    return p0
.end method

.method static synthetic access$402(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->blockLogin:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->onLoginDoneFailed(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->showLoginRetryAlert(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->callNtLogin()V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->loginWithCheck()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->retFailure()V

    return-void
.end method

.method private callNtLogin()V
    .locals 2

    const-string v0, "UniSDK AuthLogin"

    const-string v1, "Enter callNtLogin"

    .line 211
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->setStartLoginByScanner(Z)V

    .line 213
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogin()V

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->needLoginOnResume:Z

    return-void
.end method

.method private getOriginLoginDoneListener(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;
    .locals 2

    .line 260
    :try_start_0
    const-class v0, Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "loginListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/OnLoginDoneListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initUniSDK()V
    .locals 4

    const-string v0, "UniSDK AuthLogin"

    const-string v1, "Enter initUniSDK"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/auth/AuthUtils;->updateOrientation(Landroid/app/Activity;)V

    .line 136
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "unisdk_skin_type"

    invoke-static {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/tools/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "SKIN_TYPE"

    invoke-interface {v2, v3, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    const-string v2, "unisdk_language_code"

    invoke-static {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/tools/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "LANGUAGE_CODE"

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getGameLanguage(Ljava/lang/String;)Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->changeLanguage(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)V

    .line 146
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;-><init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    return-void
.end method

.method private login()V
    .locals 2

    const-string v0, "UniSDK AuthLogin"

    const-string v1, "Enter login"

    .line 188
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$5;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$5;-><init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->setLoginCallback(Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;)V

    .line 199
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->replaceLoginDoneListener()V

    .line 200
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isGameActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->needLoginOnResume:Z

    .line 203
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->blockLogin:Z

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isStartLoginByScanner()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->callNtLogin()V

    return-void
.end method

.method private loginWithCheck()V
    .locals 5

    const-string v0, "UniSDK AuthLogin"

    const-string v1, "Enter loginWithCheck"

    .line 167
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getDecodedData()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {}, Lcom/netease/mpay/oversea/scan/ScannerApp;->getInstance()Lcom/netease/mpay/oversea/scan/ScannerApp;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;

    invoke-direct {v4, p0, v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$4;-><init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/netease/mpay/oversea/scan/ScannerApp;->fetchQrConfigTask(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    return-void
.end method

.method private onLoginDoneFailed(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V
    .locals 1

    .line 285
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->retFailure()V

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    const/4 p1, 0x0

    .line 287
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->blockLogin:Z

    .line 288
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->setLastUid(Ljava/lang/String;)V

    return-void
.end method

.method private replaceLoginDoneListener()V
    .locals 3

    const-string v0, "UniSDK AuthLogin"

    const-string v1, "Enter replaceLoginDoneListener"

    .line 218
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mSdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mSdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->getOriginLoginDoneListener(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mOrigin:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    .line 223
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mSdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mReplacedLoginDoneListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private retFailure()V
    .locals 3

    .line 275
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->getCallback()Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_FAILED:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    iget-object v2, v2, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    invoke-static {v1, v2, p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    return-void
.end method

.method private retSuccess()V
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->getCallback()Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_SUCCESS:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mPreTaskResult:Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    iget-object v2, v2, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    invoke-static {v1, v2, p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;->onFinish(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    return-void
.end method

.method private showLoginRetryAlert(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V
    .locals 9

    .line 231
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0228

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v2, Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0222

    .line 235
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0232

    .line 236
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;

    invoke-direct {v6, p0, p1, p2}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;-><init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V

    new-instance v7, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$7;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$7;-><init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    const/4 v8, 0x0

    .line 233
    invoke-virtual/range {v2 .. v8}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 93
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->initUniSDK()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->hasLogin()Z

    move-result v0

    .line 97
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UIN"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v4, "hasLogin=%b, lastUid=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniSDK AuthLogin"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->setHasLogin(Z)V

    .line 100
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->setLastUid(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->loginWithCheck()V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 112
    const-class v0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNeedSuccessBeforeExecute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized onResume()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UniSDK AuthLogin"

    const-string v1, "onResume"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isGameActivityPaused()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->blockLogin:Z

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$2;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$2;-><init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->blockLogin:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
