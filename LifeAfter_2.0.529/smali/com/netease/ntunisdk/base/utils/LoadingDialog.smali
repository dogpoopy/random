.class public Lcom/netease/ntunisdk/base/utils/LoadingDialog;
.super Ljava/lang/Object;
.source "LoadingDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingDialog"

.field private static instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;


# instance fields
.field private final MSG_ORDER_LOADING_CLOSE:I

.field private dialog:Landroid/app/Dialog;

.field private handler:Landroid/os/Handler;

.field private loadingInterval:J

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dialog:Landroid/app/Dialog;

    const-wide/32 v1, 0x2bf20

    .line 21
    iput-wide v1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->loadingInterval:J

    const/4 v1, 0x1

    .line 22
    iput v1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->MSG_ORDER_LOADING_CLOSE:I

    .line 23
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->handler:Landroid/os/Handler;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    .line 29
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/netease/ntunisdk/base/utils/LoadingDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog$1;-><init>(Lcom/netease/ntunisdk/base/utils/LoadingDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/base/utils/LoadingDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/netease/ntunisdk/base/utils/LoadingDialog;
    .locals 1

    .line 42
    sget-object v0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->resetContext(Landroid/app/Activity;)V

    .line 47
    :goto_0
    sget-object p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    return-object p0
.end method

.method private resetContext(Landroid/app/Activity;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/LoadingDialog$3;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog$3;-><init>(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dismissAndRemoveMessage()V
    .locals 2

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dismiss()V

    .line 120
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadingDialog"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;-><init>(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 7

    const-string v0, "LoadingDialog"

    const-wide/16 v1, 0x0

    .line 83
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-long v3, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 88
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    cmp-long p1, v3, v1

    if-lez p1, :cond_1

    .line 91
    iget-wide v1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->loadingInterval:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    .line 92
    iput-wide v3, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->loadingInterval:J

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->show()V

    .line 95
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 96
    iget-wide v1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->loadingInterval:J

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
