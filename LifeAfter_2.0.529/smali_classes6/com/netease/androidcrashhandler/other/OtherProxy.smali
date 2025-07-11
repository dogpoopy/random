.class public Lcom/netease/androidcrashhandler/other/OtherProxy;
.super Ljava/lang/Object;
.source "OtherProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OtherProxy"

.field private static sOtherProxy:Lcom/netease/androidcrashhandler/other/OtherProxy;


# instance fields
.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/netease/androidcrashhandler/other/OtherCore;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mAl:Ljava/util/ArrayList;

    .line 24
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmQueueSize()I

    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtherProxy [TaskProxy] queue size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/other/OtherProxy;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    return p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;
    .locals 1

    .line 30
    sget-object v0, Lcom/netease/androidcrashhandler/other/OtherProxy;->sOtherProxy:Lcom/netease/androidcrashhandler/other/OtherProxy;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/other/OtherProxy;->sOtherProxy:Lcom/netease/androidcrashhandler/other/OtherProxy;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/other/OtherProxy;->sOtherProxy:Lcom/netease/androidcrashhandler/other/OtherProxy;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    return v0
.end method

.method public put(Lcom/netease/androidcrashhandler/other/OtherCore;)Z
    .locals 4

    const-string v0, "trace"

    const-string v1, "OtherProxy [put]"

    .line 39
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OtherProxy [put] call size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "OtherProxy [put] mCallQueue is null"

    .line 46
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    .line 102
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    return-void
.end method

.method public start()V
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtherProxy [start] mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "OtherProxy [start] \u7ebf\u7a0b\u6c60\u6b63\u5728\u8fdb\u884c\u4e2d"

    .line 58
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    iput v2, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    .line 64
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/other/OtherProxy$1;-><init>(Lcom/netease/androidcrashhandler/other/OtherProxy;)V

    const-string v1, "appdump_zip"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x5

    .line 107
    iput v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    return-void
.end method
