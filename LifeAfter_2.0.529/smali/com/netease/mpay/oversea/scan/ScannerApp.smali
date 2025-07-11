.class public Lcom/netease/mpay/oversea/scan/ScannerApp;
.super Ljava/lang/Object;
.source "ScannerApp.java"


# static fields
.field private static sInstance:Lcom/netease/mpay/oversea/scan/ScannerApp;


# instance fields
.field private volatile mConfig:Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/ScannerApp;->reset()V

    return-void
.end method

.method static synthetic access$002(Lcom/netease/mpay/oversea/scan/ScannerApp;Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp;->mConfig:Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/mpay/oversea/scan/ScannerApp;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/scan/ScannerApp;->showErrorMsg(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V

    return-void
.end method

.method private fetchConfig(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V
    .locals 2

    .line 80
    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;

    new-instance v1, Lcom/netease/mpay/oversea/scan/ScannerApp$1;

    invoke-direct {v1, p0, p3, p1, p5}, Lcom/netease/mpay/oversea/scan/ScannerApp$1;-><init>(Lcom/netease/mpay/oversea/scan/ScannerApp;Ljava/lang/Runnable;Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V

    invoke-direct {v0, p1, p2, p4, v1}, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 91
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;->execute()V

    return-void
.end method

.method public static getInstance()Lcom/netease/mpay/oversea/scan/ScannerApp;
    .locals 2

    .line 29
    const-class v0, Lcom/netease/mpay/oversea/scan/ScannerApp;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/scan/ScannerApp;->sInstance:Lcom/netease/mpay/oversea/scan/ScannerApp;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/netease/mpay/oversea/scan/ScannerApp;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/scan/ScannerApp;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/scan/ScannerApp;->sInstance:Lcom/netease/mpay/oversea/scan/ScannerApp;

    .line 33
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object v0, Lcom/netease/mpay/oversea/scan/ScannerApp;->sInstance:Lcom/netease/mpay/oversea/scan/ScannerApp;

    return-object v0

    :catchall_0
    move-exception v1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private showErrorMsg(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V
    .locals 7

    .line 114
    new-instance v0, Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0b022c

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/scan/ScannerUtils;->getStringByLocale(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/netease/mpay/oversea/scan/ScannerApp$3;

    invoke-direct {v4, p0, p3}, Lcom/netease/mpay/oversea/scan/ScannerApp$3;-><init>(Lcom/netease/mpay/oversea/scan/ScannerApp;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method


# virtual methods
.method public call(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/ScannerCallback;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Ljava/lang/Runnable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_4

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    invoke-interface {p2}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerCancel()V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp;->mConfig:Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    if-nez v0, :cond_2

    .line 55
    sget-object v3, Lcom/netease/mpay/oversea/scan/Consts;->APP_ID:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/ScannerApp;->fetchConfig(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 58
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 60
    :cond_3
    invoke-interface {p2}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerCancel()V

    :goto_0
    return-void

    .line 48
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "LoginCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fetchQrConfigTask(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
            "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp;->mConfig:Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    if-eqz v0, :cond_0

    .line 96
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp;->mConfig:Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    invoke-interface {p3, p1}, Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;

    const/4 v1, 0x0

    new-instance v2, Lcom/netease/mpay/oversea/scan/ScannerApp$2;

    invoke-direct {v2, p0, p3}, Lcom/netease/mpay/oversea/scan/ScannerApp$2;-><init>(Lcom/netease/mpay/oversea/scan/ScannerApp;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 109
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/QrConfigTask;->execute()V

    :goto_0
    return-void
.end method

.method public getConfig()Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp;->mConfig:Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp;->mConfig:Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;-><init>()V

    :goto_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp;->mConfig:Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    return-void
.end method
