.class public Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;
.super Ljava/lang/Object;
.source "UISenseManager.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;


# static fields
.field private static final DEFAULT_FRAME_DURATION:J = 0xfe502bL


# instance fields
.field private MANAGER:Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;

.field private mInit:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;->MANAGER:Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;->mInit:Z

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 15
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;->mInit:Z

    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->registerCallback(Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;)V

    return-void
.end method


# virtual methods
.method public getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;->MANAGER:Lcom/netease/androidcrashhandler/anr/messageQueue/UISenseManager;

    return-object v0
.end method

.method public messageEnd(JJ)V
    .locals 0

    return-void
.end method

.method public messageStart(JJ)V
    .locals 0

    return-void
.end method
