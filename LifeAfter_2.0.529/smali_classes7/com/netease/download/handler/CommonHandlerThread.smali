.class public Lcom/netease/download/handler/CommonHandlerThread;
.super Landroid/os/HandlerThread;
.source "CommonHandlerThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonHandlerThread"

.field private static sThread:Lcom/netease/download/handler/CommonHandlerThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/netease/download/handler/CommonHandlerThread;->start()V

    return-void
.end method

.method public static getInstance()Lcom/netease/download/handler/CommonHandlerThread;
    .locals 3

    .line 25
    sget-object v0, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/netease/download/handler/CommonHandlerThread;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/netease/download/handler/CommonHandlerThread;

    const-string v2, "CommonHandlerThread"

    invoke-direct {v1, v2}, Lcom/netease/download/handler/CommonHandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 38
    sget-object v0, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/netease/download/handler/CommonHandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    :cond_0
    return-void
.end method
