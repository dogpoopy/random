.class public Lcom/netease/androidcrashhandler/processCenter/RetryHandler;
.super Landroid/os/HandlerThread;
.source "RetryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;
    }
.end annotation


# static fields
.field private static HANDLER:Lcom/netease/androidcrashhandler/processCenter/RetryHandler;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->HANDLER:Lcom/netease/androidcrashhandler/processCenter/RetryHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "RetryHandler"

    .line 20
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->start()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/processCenter/RetryHandler;
    .locals 1

    .line 16
    sget-object v0, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->HANDLER:Lcom/netease/androidcrashhandler/processCenter/RetryHandler;

    return-object v0
.end method


# virtual methods
.method public sendRetryTaskDelay(Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;J)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "RetryHandler [sendRetryTaskDelay] send to retryTask"

    .line 30
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/androidcrashhandler/processCenter/RetryHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/androidcrashhandler/processCenter/RetryHandler$1;-><init>(Lcom/netease/androidcrashhandler/processCenter/RetryHandler;Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
