.class public Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;
.super Lcom/netease/ntunisdk/shortcuts/MockMainActivity;
.source "ShortcutMainActivity.java"


# static fields
.field public static final CURRENT_QUICK_QR_MODE:Ljava/lang/String; = "CURRENT_QUICK_QR_MODE"

.field public static final CURRENT_SHORTCUT_MAIN_RUNNING:Ljava/lang/String; = "CURRENT_SHORTCUT_MAIN_RUNNING"

.field public static final DOT:Ljava/lang/String; = "."

.field public static final GAME_MOBILE:Ljava/lang/String; = "game.mobile"

.field public static final NTES:Ljava/lang/String; = "ntes"


# instance fields
.field private mWaitingForProtocolCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/MockMainActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->presentQRCodeScanner()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->mWaitingForProtocolCallback:Z

    return p0
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->mWaitingForProtocolCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onProtocolFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onLoginDone(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->qrCodeScanLoginSuccessAlert()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->qrCodeScanIndexPayFinishAlert(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onInitUniSDKSuccess()V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onInitUniSDKFailed()V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->killProcess()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;ILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onCodeScannerFinish(ILjava/lang/String;)V

    return-void
.end method

.method private getUnisdkDeepLinkPath()Ljava/lang/String;
    .locals 3

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "JF_GAMEID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    const-string v0, "QR quickqr_main"

    const-string v1, "Enter init"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-boolean v0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->mIsColdLaunch:Z

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 205
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "CURRENT_SHORTCUT_MAIN_RUNNING"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method private initUniSDK()V
    .locals 3

    const-string v0, "QR quickqr_main"

    const-string v1, "Enter initUniSDK"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-boolean v0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->mIsColdLaunch:Z

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$3;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$3;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    .line 226
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$4;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$4;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V

    .line 233
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$5;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$5;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    .line 252
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$6;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$6;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    .line 276
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$7;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$7;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    return-void
.end method

.method private isLandscape()Z
    .locals 4

    .line 455
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SCR_ORIENTATION"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCR_ORIENTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QR quickqr_main"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNeteaseChannel()Z
    .locals 2

    .line 450
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "netease"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isProtocolShowing()Z
    .locals 3

    .line 192
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u8bf7UniPack\u4f7f\u7528protocol_12\u53ca\u4ee5\u4e0a\u7248\u672c"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private killProcess()V
    .locals 2

    const-string v0, "QR quickqr_main"

    const-string v1, "killProcess"

    .line 444
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->finish()V

    const/4 v0, 0x0

    .line 446
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private loadGameBackground()V
    .locals 2

    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/netease/ntunisdk/shortcuts/BgUtils;->getQuickQrBgResId(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0x7f09011c

    .line 110
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->setContentView(I)V

    const v1, 0x7f0703c4

    .line 111
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v0, "QR quickqr_main"

    const-string v1, "loadGameBackground background not exist, ignore"

    .line 115
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onCodeScannerFinish(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 396
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "Enter onCodeScannerFinish code=%s, extra=%s"

    .line 395
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "QR quickqr_main"

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x15

    if-ne p1, p2, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->killProcess()V

    goto :goto_0

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->killProcess()V

    :goto_0
    return-void
.end method

.method private onInitUniSDKFailed()V
    .locals 7

    .line 346
    new-instance v0, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    const-string v1, "string"

    const-string v2, "ntunisdk_scan_quit_app"

    .line 348
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ntunisdk_scan_start_game"

    .line 349
    invoke-static {p0, v3, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$10;

    invoke-direct {v4, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$10;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    new-instance v5, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$11;

    invoke-direct {v5, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$11;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    const-string v1, "\u672a\u77e5\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const/4 v6, 0x0

    .line 346
    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private onInitUniSDKSuccess()V
    .locals 5

    .line 317
    invoke-static {}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;->checkUniSDKParams()Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;

    move-result-object v0

    .line 318
    iget-boolean v1, v0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;->success:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    new-array v2, v2, [Ljava/lang/Object;

    iget v0, v0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckResult;->code:I

    .line 320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "\u53c2\u6570\u9519\u8bef(-%s)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$8;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$8;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    const-string v4, "\u9000\u51fa\u5e94\u7528"

    .line 319
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 329
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_JF_GAS3"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 330
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->isNeteaseChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->presentQRCodeScanner()V

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogin()V

    .line 336
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$9;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$9;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V

    return-void
.end method

.method private onLoginDone(I)V
    .locals 7

    if-nez p1, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->presentQRCodeScanner()V

    goto :goto_0

    .line 367
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    new-instance v4, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$12;

    invoke-direct {v4, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$12;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    new-instance v5, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$13;

    invoke-direct {v5, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$13;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

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

    .line 78
    iget-boolean v0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->mIsColdLaunch:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->initUniSDK()V

    .line 80
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->updateOrientation()V

    goto :goto_0

    :cond_0
    const-string v0, "QR quickqr_main"

    const-string v1, "UniSDK has already init, ignore init"

    .line 84
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->finish()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$1;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private presentQRCodeScanner()V
    .locals 3

    const-string v0, "QR quickqr_main"

    const-string v1, "start presentQRCodeScanner"

    .line 385
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "CURRENT_QUICK_QR_MODE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 388
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntPresentQRCodeScanner(Ljava/lang/String;I)V

    return-void
.end method

.method private qrCodeScanIndexPayFinishAlert(I)V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Enter qrCodeScanIndexPayFinishAlert orderStatus=%s"

    .line 425
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QR quickqr_main"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v1, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    const-string p1, "string"

    const-string v0, "ntunisdk_scan_quit_app"

    .line 429
    invoke-static {p0, v0, p1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ntunisdk_scan_start_game"

    .line 430
    invoke-static {p0, v0, p1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$16;

    invoke-direct {v5, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$16;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    new-instance v6, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$17;

    invoke-direct {v6, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$17;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    const-string v2, "\u652f\u4ed8\u7ed3\u675f\uff0c\u662f\u5426\u9000\u51fa\u5e94\u7528\uff1f"

    const/4 v7, 0x0

    .line 427
    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private qrCodeScanLoginSuccessAlert()V
    .locals 8

    .line 408
    new-instance v0, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    const-string v1, "string"

    const-string v2, "ntunisdk_scan_qrcode_quit_app_warn"

    .line 409
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ntunisdk_scan_quit_app"

    .line 410
    invoke-static {p0, v3, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ntunisdk_scan_start_game"

    .line 411
    invoke-static {p0, v4, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$14;

    invoke-direct {v5, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$14;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    new-instance v6, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$15;

    invoke-direct {v6, p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$15;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    const/4 v7, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .line 408
    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private returnToGame()Z
    .locals 4

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "ntes"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "game.mobile"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 127
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getUnisdkDeepLinkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no UniSDK Deep Link found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR quickqr_main"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private showProtocol()V
    .locals 2

    .line 153
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->init(Landroid/app/Activity;)V

    .line 155
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasAcceptLaunchProtocol()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "QR quickqr_main"

    const-string v1, "hasAcceptLaunchProtocol = true"

    .line 156
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onProtocolFinish()V

    return-void

    .line 161
    :cond_0
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-direct {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    .line 162
    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setActivity(Landroid/app/Activity;)V

    .line 163
    new-instance v1, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;-><init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    const/4 v1, 0x1

    .line 185
    iput-boolean v1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->mWaitingForProtocolCallback:Z

    .line 186
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch()V

    return-void
.end method

.method private updateOrientation()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 99
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public notifyQuickQrSetProps(Ljava/lang/String;)V
    .locals 5

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quickQrConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR quickqr_main"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-boolean v0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->mIsColdLaunch:Z

    if-nez v0, :cond_0

    const-string p1, "not cold launch, notifyQuickQrSetProps ignore"

    .line 295
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 302
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 304
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyQuickQrSetProps JSONException:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/shortcuts/MockMainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/shortcuts/MockMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-boolean p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->mIsColdLaunch:Z

    if-eqz p1, :cond_0

    const-string p1, "cold launch"

    goto :goto_0

    :cond_0
    const-string p1, "hot launch"

    :goto_0
    const-string v0, "QR quickqr_main"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;->isSupportProtocol()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    invoke-static {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;->isProtocolLauncher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->isProtocolShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Protocol is showing, finish self"

    .line 65
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->finish()V

    return-void

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->init()V

    .line 70
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->showProtocol()V

    goto :goto_1

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->init()V

    .line 73
    invoke-direct {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onProtocolFinish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 472
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CURRENT_SHORTCUT_MAIN_RUNNING"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 475
    :cond_0
    invoke-super {p0}, Lcom/netease/ntunisdk/shortcuts/MockMainActivity;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/netease/ntunisdk/shortcuts/MockMainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
