.class public Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;
.super Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;
.source "ScannerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;,
        Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;
    }
.end annotation


# instance fields
.field private mAlerters:Lcom/netease/mpay/oversea/scan/widgets/Alerters;

.field private mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

.field private mOptions:Lcom/netease/mpay/oversea/scan/ScannerOptions;

.field private mQrCodeData:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;

.field private mQrData:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mScene:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mScene:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Lcom/netease/mpay/oversea/scan/ScannerCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/content/res/Resources;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->showErrorMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method public static checkValid(Ljava/lang/String;)Z
    .locals 1

    .line 162
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/scan/ScannerApp;->getInstance()Lcom/netease/mpay/oversea/scan/ScannerApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/ScannerApp;->getConfig()Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;->regex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private decodeQrCode(Ljava/lang/String;)Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;
    .locals 1

    .line 153
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->checkValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    sget-object v1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->QR_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    sget-object p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->SCENE:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    sget-object p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->CALLBACK_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    sget-object p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->CONFIRM_DATA:Ljava/lang/String;

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->OPTION_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->launchScannerActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method private showErrorMsg(Ljava/lang/String;)V
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mAlerters:Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b022c

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$3;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$3;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 171
    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private start()V
    .locals 7

    .line 99
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mQrData:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->decodeQrCode(Ljava/lang/String;)Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mQrCodeData:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;

    .line 100
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mQrCodeData:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mOptions:Lcom/netease/mpay/oversea/scan/ScannerOptions;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/ScannerOptions;->scannerExtQrCodeCallback:Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mOptions:Lcom/netease/mpay/oversea/scan/ScannerOptions;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/ScannerOptions;->scannerExtQrCodeCallback:Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mQrData:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;->onFetchQrCode(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->showErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_2
    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mQrCodeData:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;

    iget-object v3, v1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;->scanUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mScene:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    const v5, 0x7f0702e8

    .line 112
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/netease/mpay/oversea/scan/widgets/ProgressView;

    new-instance v6, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 148
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;->execute()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    .line 191
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string p1, "data"

    .line 194
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    :cond_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    invoke-interface {p2, p1}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerLoginSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    if-eqz p1, :cond_2

    .line 200
    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerCancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerCancel()V

    .line 210
    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    const v0, 0x7f0900ed

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 67
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->CALLBACK_ID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 71
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;->getInstance()Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;->peek(I)Lcom/netease/mpay/oversea/scan/ScannerCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    .line 72
    invoke-static {}, Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;->getInstance()Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;

    move-result-object v0

    sget-object v2, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->OPTION_ID:Ljava/lang/String;

    .line 73
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;->peekOptions(I)Lcom/netease/mpay/oversea/scan/ScannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mOptions:Lcom/netease/mpay/oversea/scan/ScannerOptions;

    .line 74
    sget-object v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->QR_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mQrData:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->SCENE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mScene:Ljava/lang/String;

    .line 76
    new-instance p1, Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mAlerters:Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    .line 77
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mResources:Landroid/content/res/Resources;

    .line 79
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/scan/ScannerApp;->getInstance()Lcom/netease/mpay/oversea/scan/ScannerApp;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    const v3, 0x7f0702e8

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/scan/widgets/ProgressView;

    new-instance v3, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$1;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$1;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)V

    .line 79
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/scan/ScannerApp;->call(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/ScannerCallback;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 91
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 92
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->mCallback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    if-eqz p1, :cond_2

    .line 93
    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerCancel()V

    :cond_2
    :goto_0
    return-void
.end method
