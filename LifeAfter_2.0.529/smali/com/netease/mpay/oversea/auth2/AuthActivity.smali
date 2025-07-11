.class public Lcom/netease/mpay/oversea/auth2/AuthActivity;
.super Lcom/netease/mpay/oversea/auth2/MockMainActivity;
.source "AuthActivity.java"


# static fields
.field public static final CURRENT_SHORTCUT_MAIN_RUNNING:Ljava/lang/String; = "CURRENT_SHORTCUT_MAIN_RUNNING"


# instance fields
.field private mDecodedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/MockMainActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->onProtocolFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->openAuthLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/mpay/oversea/auth2/AuthActivity;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->onLoginDone(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->onInitUniSDKSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->onInitUniSDKFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->killProcess()V

    return-void
.end method

.method private init()V
    .locals 3

    const-string v0, "auth_main"

    const-string v1, "Enter init"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity;->mIsColdLaunch:Z

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "CURRENT_SHORTCUT_MAIN_RUNNING"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method private initUniSDK()V
    .locals 3

    const-string v0, "auth_main"

    const-string v1, "Enter initUniSDK"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity;->mIsColdLaunch:Z

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/auth2/AuthActivity$3;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$3;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    .line 106
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/auth2/AuthActivity$4;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$4;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    .line 128
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/auth2/AuthActivity$5;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$5;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    return-void
.end method

.method private killProcess()V
    .locals 2

    const-string v0, "auth_main"

    const-string v1, "killProcess"

    .line 232
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->finish()V

    const/4 v0, 0x0

    .line 234
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private onInitUniSDKFailed()V
    .locals 7

    .line 173
    new-instance v0, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    const-string v1, "string"

    const-string v2, "ntunisdk_scan_quit_app"

    .line 175
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ntunisdk_scan_start_game"

    .line 176
    invoke-static {p0, v3, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/oversea/auth2/AuthActivity$6;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$6;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    new-instance v5, Lcom/netease/mpay/oversea/auth2/AuthActivity$7;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$7;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    const-string v1, "\u672a\u77e5\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const/4 v6, 0x0

    .line 173
    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private onInitUniSDKSuccess()V
    .locals 3

    .line 159
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_JF_GAS3"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 161
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogin()V

    return-void
.end method

.method private onLoginDone(I)V
    .locals 7

    if-nez p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->openAuthLogin()V

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    new-instance v4, Lcom/netease/mpay/oversea/auth2/AuthActivity$8;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$8;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    new-instance v5, Lcom/netease/mpay/oversea/auth2/AuthActivity$9;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$9;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    const/4 v6, 0x0

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u662f\u5426\u91cd\u8bd5\uff1f"

    const-string v2, "\u9000\u51fa"

    const-string v3, "\u91cd\u8bd5"

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    :goto_0
    return-void
.end method

.method private onProtocolFinish()V
    .locals 4

    .line 74
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity;->mIsColdLaunch:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->initUniSDK()V

    .line 76
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->updateOrientation()V

    goto :goto_0

    :cond_0
    const-string v0, "auth_main"

    const-string v1, "UniSDK has already init, ignore init"

    .line 78
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->finish()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/mpay/oversea/auth2/AuthActivity$2;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$2;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private openAuthLogin()V
    .locals 3

    const-string v0, "openAuthLogin"

    const-string v1, "auth_main"

    .line 212
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    .line 215
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "decoded_data"

    .line 216
    iget-object v2, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity;->mDecodedData:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateOrientation()V
    .locals 1

    .line 224
    invoke-static {}, Lcom/netease/mpay/oversea/auth2/AuthUtils;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 225
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/auth2/MockMainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/auth2/MockMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity;->mIsColdLaunch:Z

    if-eqz p1, :cond_0

    const-string p1, "cold launch"

    goto :goto_0

    :cond_0
    const-string p1, "hot launch"

    :goto_0
    const-string v0, "auth_main"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/auth2/AuthUtils;->checkRequest(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity;->mDecodedData:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity;->mDecodedData:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "check intent failed, finish self"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->finish()V

    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;->isSupportProtocol()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    invoke-static {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;->isProtocolLauncher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 46
    invoke-static {}, Lcom/netease/mpay/oversea/auth2/AuthUtils;->isProtocolShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Protocol is showing, finish self"

    .line 47
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->finish()V

    return-void

    .line 51
    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->init()V

    .line 52
    new-instance p1, Lcom/netease/mpay/oversea/auth2/AuthActivity$1;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity$1;-><init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/auth2/AuthUtils;->showProtocol(Landroid/app/Activity;Lcom/netease/mpay/oversea/auth2/AuthUtils$OnProtocolFinishListener;)V

    goto :goto_1

    .line 59
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->init()V

    .line 60
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->onProtocolFinish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 239
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CURRENT_SHORTCUT_MAIN_RUNNING"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/oversea/auth2/MockMainActivity;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/auth2/MockMainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
