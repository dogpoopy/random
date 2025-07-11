.class public Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
.super Ljava/lang/Object;
.source "ProtocolManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "M"

.field private static volatile instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConcreteCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

.field private mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

.field private mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

.field private mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

.field private mShowProtocolWhenLaunch:Z

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    .line 63
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mConcreteCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->notShowCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;ZLjava/lang/Runnable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showErrorDialog(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->preDialog(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mShowProtocolWhenLaunch:Z

    return p0
.end method

.method static synthetic access$702(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mShowProtocolWhenLaunch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->loadProtocol()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 2

    .line 85
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    if-nez v0, :cond_1

    .line 86
    const-class v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 90
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 92
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    return-object v0
.end method

.method private loadProtocol()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getOfflineGameFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->loadLocalProtocol()V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->checkLatestProtocol()V

    :goto_0
    return-void
.end method

.method private notShowCallback()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$6;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$6;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private preDialog(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;
    .locals 12

    move-object v1, p0

    move-object v0, p2

    const-string v10, "M"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 398
    :cond_0
    :try_start_0
    sget-object v3, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->$SwitchMap$com$netease$ntunisdk$external$protocol$Scene:[I

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/Scene;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 415
    :cond_1
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_2
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_3
    iget v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->acceptStatus:I

    if-ne v3, v5, :cond_4

    .line 403
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->updateText:Ljava/lang/String;

    .line 404
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 405
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_4
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    .line 422
    :cond_5
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "empty  ProtocolText"

    .line 423
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 426
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 428
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    const/4 v3, 0x0

    .line 430
    invoke-interface {v8}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {v8, v3, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "##fromHtml time : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v11, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    iget-object v3, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    :try_start_1
    iget-object v3, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivity:Landroid/app/Activity;

    move-object v2, v11

    move-object v4, p1

    move v5, p3

    move-object v6, p2

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v9}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->init(Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    move-object v2, v11

    goto :goto_1

    :catch_1
    move-exception v0

    .line 437
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preDialog Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private showErrorDialog(ZLjava/lang/Runnable;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public acceptProtocol()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->saveConfirmByUid(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public gameLoginSuccess(Ljava/lang/String;)V
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-object v0
.end method

.method public getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    return-object v0
.end method

.method public getProtocolType()I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "latest_v36.tw.json"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "latest_v39.tw.json"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v2
.end method

.method public handleOnConfigurationChanged()V
    .locals 2

    const-string v0, "M"

    const-string v1, "handleOnConfigurationChanged"

    .line 133
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hasAcceptLaunchProtocol()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 96
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->setContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mConcreteCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-void
.end method

.method public setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    .line 108
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    return-void
.end method

.method public showProtocol()V
    .locals 2

    const-string v0, "M"

    const-string v1, "showProtocol"

    .line 343
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public showProtocolIfNeed(Ljava/lang/String;)V
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProtocol >> uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public showProtocolWhenLaunch()V
    .locals 2

    const-string v0, "M"

    const-string v1, "showProtocolWhenLaunch"

    .line 143
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
