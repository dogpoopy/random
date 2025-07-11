.class public Lcom/netease/download/downloader/TaskHandleOp;
.super Ljava/lang/Object;
.source "TaskHandleOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskHandleOp"

.field private static sTaskHandleOp:Lcom/netease/download/downloader/TaskHandleOp;


# instance fields
.field private mIsStart:Z

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHandle:Lcom/netease/download/downloader/TaskHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    .line 23
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mIsStart:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/downloader/TaskHandleOp;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/download/downloader/TaskHandleOp;
    .locals 1

    .line 32
    sget-object v0, Lcom/netease/download/downloader/TaskHandleOp;->sTaskHandleOp:Lcom/netease/download/downloader/TaskHandleOp;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp;

    invoke-direct {v0}, Lcom/netease/download/downloader/TaskHandleOp;-><init>()V

    sput-object v0, Lcom/netease/download/downloader/TaskHandleOp;->sTaskHandleOp:Lcom/netease/download/downloader/TaskHandleOp;

    .line 36
    :cond_0
    sget-object v0, Lcom/netease/download/downloader/TaskHandleOp;->sTaskHandleOp:Lcom/netease/download/downloader/TaskHandleOp;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public addChannelDnsCostTimeMap(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addChannelDnsCostTimeMap] start"

    .line 570
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "ChannelDnsCostTimeMap"

    .line 574
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 575
    iput-object p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 576
    iput-wide p2, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mTime:J

    .line 578
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addChannelDnsIpMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addChannelDnsIpMap] start"

    .line 587
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "ChannelDnsIpMap"

    .line 591
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 592
    iput-object p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 593
    iput-object p2, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mIp:Ljava/lang/String;

    .line 595
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addChannelDownloadCostTimeMap(Lcom/netease/ntunisdk/okhttp3/Headers;J)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addChannelDownloadCostTimeMap] start"

    .line 486
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "ChannelDownloadCostTimeMap"

    .line 490
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 491
    iput-object p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mHeader:Lcom/netease/ntunisdk/okhttp3/Headers;

    .line 492
    iput-wide p2, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mTime:J

    .line 494
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addChannelHttpdnsIpMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addChannelHttpdnsIpMap] start"

    .line 608
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "ChannelHttpdnsIpMap"

    .line 612
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 613
    iput-object p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 614
    iput-object p2, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mIp:Ljava/lang/String;

    .line 616
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addChannleSpeedMap(Ljava/lang/String;JJ)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addChannleSpeedMap] start"

    .line 627
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "ChannelSpeedMap"

    .line 631
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 632
    iput-object p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 633
    iput-wide p2, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 634
    iput-wide p4, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mTime:J

    .line 636
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addHttpCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addHttpCount] start"

    .line 58
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "HttpCount"

    .line 62
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addHttpFailCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addHttpFailCount] start"

    .line 90
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "HttpFailCount"

    .line 94
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addHttpFailCountToMap(I)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addHttpFailCountToMap] start"

    .line 104
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "HttpFailMap"

    .line 108
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 109
    iput p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mCode:I

    .line 111
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized addHttpFailFileNameMapToMap(ILcom/netease/ntunisdk/okhttp3/Headers;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addHttpFailFileNameMapToMap] start"

    .line 129
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TaskHandleOp"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskHandleOp [addHttpFailFileNameMapToMap] start code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "HttpFailFileNameMap"

    .line 136
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 137
    iput p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mCode:I

    const-string p1, "TaskHandleOp"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskHandleOp [addHttpFailFileNameMapToMap] header="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput-object p2, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mHeader:Lcom/netease/ntunisdk/okhttp3/Headers;

    .line 140
    iput-object p3, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 142
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addHttpSuccessCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addHttpSuccessCount] start"

    .line 72
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "HttpSuccessCount"

    .line 77
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addRemoveIpsMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addRemoveIpsMap] start"

    .line 647
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 651
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "RemoveIpsMap"

    .line 652
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 653
    iput-object p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 654
    iput-object p2, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mIp:Ljava/lang/String;

    .line 656
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskCurTimeDownloadSizes(J)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskCurTimeDownloadSizes] start"

    .line 521
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskCurTimeDownloadSizes"

    .line 525
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 526
    iput-wide p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 528
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskDownloadFileVerifySizes(J)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskDownloadFileVerifySizes] start"

    .line 536
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskDownloadFileVerifySizes"

    .line 540
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 541
    iput-wide p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 543
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskDownloadMergeFileVerifySizes(J)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskDownloadMergeFileVerifySizes] start"

    .line 551
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskDownloadMergeFileVerifySizes"

    .line 555
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 556
    iput-wide p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 558
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized addTaskFailCancelCodeCount()V
    .locals 2

    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget v1, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCancelCodeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCancelCodeCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addTaskFailCodeCountMap(IJ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addHttpFailCountToMap] start"

    .line 357
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-object v0, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTaskFailCodeMap(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addHttpFailCountToMap] start"

    .line 316
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-object v0, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-object v0, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 334
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-object v0, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-object v0, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTaskFailFileInfoMap(ILjava/lang/String;JJLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addHttpFailFileNameMapToMap] start"

    .line 378
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TaskHandleOp"

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskHandleOp [addHttpFailFileNameMapToMap] code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", first="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",md5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 382
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 404
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TaskHandleOp"

    .line 406
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "TaskHandleOp [start] [mTaskFailFileInfoMap] finalUrlInfo="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object p3, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-object p3, p3, Lcom/netease/download/downloader/TaskHandle;->mTaskFailFileInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 408
    iget-object p3, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-object p3, p3, Lcom/netease/download/downloader/TaskHandle;->mTaskFailFileInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONArray;

    goto :goto_0

    .line 411
    :cond_1
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 414
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    const/16 p5, 0xa

    if-ge p4, p5, :cond_2

    .line 415
    invoke-virtual {p3, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 418
    :cond_2
    iget-object p2, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-object p2, p2, Lcom/netease/download/downloader/TaskHandle;->mTaskFailFileInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addTaskFileEnterDownloadProcessCoreCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreCount] start"

    .line 193
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreCount"

    .line 198
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskFileEnterDownloadProcessCoreFailCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreFailCount] start"

    .line 223
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreFailCount"

    .line 228
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 230
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskFileEnterDownloadProcessCoreMergeFileCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreMergeFileCount] start"

    .line 424
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreMergeFileCount"

    .line 428
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 430
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskFileEnterDownloadProcessCoreMergeFileFailCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreMergeFileFailCount] start"

    .line 469
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreMergeFileFailCount"

    .line 473
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public addTaskFileEnterDownloadProcessCoreMergeFileVerifyFailCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreMergeFileVerifyFailCount] start"

    .line 454
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreMergeFileVerifyFailCount"

    .line 458
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 460
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskFileEnterDownloadProcessCoreMergeFileVerifySuccessCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreMergeFileVerifySuccessCount] start"

    .line 439
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreMergeFileVerifySuccessCount"

    .line 443
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 445
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskFileEnterDownloadProcessCoreSuccessCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreSuccessCount] start"

    .line 208
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreSuccessCount"

    .line 213
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 215
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskFileEnterDownloadProcessCoreVerifyFailCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreVerifyFailCount] start"

    .line 253
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreVerifyFailCount"

    .line 258
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskFileEnterDownloadProcessCoreVerifySuccessCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileEnterDownloadProcessCoreVerifySuccessCount] start"

    .line 238
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileEnterDownloadProcessCoreVerifySuccessCount"

    .line 243
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 245
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized addTaskFileFailCount()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileFailCount] start"

    .line 282
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    iget-wide v1, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFileFailCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/netease/download/downloader/TaskHandle;->mTaskFileFailCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addTaskFileHasSuccessCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileFailCount] start"

    .line 299
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileHasSuccessCount"

    .line 303
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 305
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskFileSuccessCount()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskFileSuccessCount] start"

    .line 268
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskFileSuccessCount"

    .line 272
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 274
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public addTaskHasDownloadVerifySizes(J)V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [addTaskHasDownloadVerifySizes] start"

    .line 506
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    invoke-direct {v0, p0}, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    const-string v1, "TaskHasDownloadVerifySizes"

    .line 510
    iput-object v1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 511
    iput-wide p1, v0, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 513
    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/TaskHandleOp;->add(Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;)V

    :cond_0
    return-void
.end method

.method public getTaskHandle()Lcom/netease/download/downloader/TaskHandle;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Lcom/netease/download/downloader/TaskHandle;

    invoke-direct {v0}, Lcom/netease/download/downloader/TaskHandle;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    .line 41
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 42
    new-instance v0, Lcom/netease/download/downloader/TaskHandle;

    invoke-direct {v0}, Lcom/netease/download/downloader/TaskHandle;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    return-void
.end method

.method public showInitInfo()V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->showInitInfo()V

    return-void
.end method

.method public showParams()V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->showParams()V

    return-void
.end method

.method public showTime()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mTaskHandle:Lcom/netease/download/downloader/TaskHandle;

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->showTime()V

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "TaskHandleOp"

    const-string v1, "TaskHandleOp [start] start"

    .line 688
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-boolean v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mIsStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Lcom/netease/download/downloader/TaskHandleOp;->mIsStart:Z

    .line 691
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/downloader/TaskHandleOp$1;

    invoke-direct {v1, p0}, Lcom/netease/download/downloader/TaskHandleOp$1;-><init>(Lcom/netease/download/downloader/TaskHandleOp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 990
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
