.class public Lcom/netease/pharos/protocolCheck/ProtocolCheck;
.super Ljava/lang/Object;
.source "ProtocolCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkCheck"


# instance fields
.field private mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

.field private mCheckResult:Lcom/netease/pharos/config/CheckResult;

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private mExtra:Ljava/lang/String;

.field private mInterval:I

.field private mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

.field private mRegion:Ljava/lang/String;

.field private final mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mRegion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mInterval:I

    .line 48
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    .line 50
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 52
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 54
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mExtra:Ljava/lang/String;

    .line 182
    new-instance v0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    invoke-direct {v0, p0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;-><init>(Lcom/netease/pharos/protocolCheck/ProtocolCheck;)V

    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/protocolCheck/ProtocolCheck;ILjava/lang/String;IIII)I
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->checkOnce(ILjava/lang/String;IIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/netease/pharos/protocolCheck/ProtocolCheck;)Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/pharos/protocolCheck/ProtocolCheck;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mExtra:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/pharos/protocolCheck/ProtocolCheck;)Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/pharos/protocolCheck/ProtocolCheck;)Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-object p0
.end method

.method private checkOnce(ILjava/lang/String;IIII)I
    .locals 6

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5355\u6b21\u6267\u884c\uff0c\u53c2\u6570 type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkCheck"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/netease/pharos/config/CheckResult;

    invoke-direct {v0}, Lcom/netease/pharos/config/CheckResult;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    .line 194
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mRegion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Lcom/netease/pharos/config/CheckResult;->setmRegion(Ljava/lang/String;)V

    .line 198
    :cond_0
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Result;->getLinktestId()Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p1}, Lcom/netease/pharos/config/CheckResult;->setProtocol(I)V

    .line 200
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p4}, Lcom/netease/pharos/config/CheckResult;->setPacketCount(I)V

    .line 201
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p6}, Lcom/netease/pharos/config/CheckResult;->setPacketBytesCount(I)V

    .line 202
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p2}, Lcom/netease/pharos/config/CheckResult;->setIp(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p3}, Lcom/netease/pharos/config/CheckResult;->setmPort(I)V

    .line 204
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/config/CheckResult;->setmExtra(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->tcpCheck(Ljava/lang/String;IIII)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->udpCheck(Ljava/lang/String;IIII)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p3, 0x3

    if-ne p3, p1, :cond_3

    .line 213
    invoke-virtual {p0, p4}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->kcpCheck(I)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p3, 0x4

    if-ne p3, p1, :cond_4

    .line 216
    invoke-virtual {p0, p2, p4, p5}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->ping(Ljava/lang/String;II)I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p3, 0x5

    if-ne p3, p1, :cond_5

    .line 219
    invoke-virtual {p0, p2}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->dns(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_5
    const/16 p1, 0xb

    :goto_0
    return p1
.end method

.method private static getProcessId(Ljava/lang/Process;)I
    .locals 2

    .line 805
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "="

    .line 807
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    .line 808
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 809
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 810
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRecordMtr(IJ)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "LinkCheck"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0xbb8

    .line 612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkCheck isRecordMtr ptotocal=kcp , useTime="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x7d0

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkCheck isRecordMtr ptotocal=udp , useTime="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x3e8

    .line 595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkCheck isRecordMtr ptotocal=tcp , useTime="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-wide v1, v2

    :goto_1
    cmp-long p1, p2, v1

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static killProcess(Ljava/lang/Process;)V
    .locals 1

    .line 784
    invoke-static {p0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->getProcessId(Ljava/lang/Process;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private static processDestroy(Ljava/lang/Process;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 769
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    invoke-static {p0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->killProcess(Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 773
    :catch_0
    invoke-static {p0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->killProcess(Ljava/lang/Process;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public check(ILjava/lang/String;IIII)I
    .locals 9

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link check2 \u53c2\u6570 type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtra= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkCheck"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mInterval:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "\u4e00\u6b21\u6027\u6267\u884c"

    .line 237
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct/range {p0 .. p6}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->checkOnce(ILjava/lang/String;IIII)I

    move-result v2

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5faa\u73af\u6267\u884c\uff0c\u65f6\u95f4\u95f4\u9694\u4e3a="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mInterval:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    invoke-virtual {v0, p1}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;->setType(I)V

    .line 245
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    invoke-virtual {p1, p2}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;->setmIp(Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    invoke-virtual {p1, p3}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;->setmPort(I)V

    .line 247
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    invoke-virtual {p1, p4}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;->setTime(I)V

    .line 248
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    invoke-virtual {p1, p5}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;->setmTime(I)V

    .line 249
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    invoke-virtual {p1, p6}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;->setmSize(I)V

    .line 259
    invoke-static {}, Lcom/netease/pharos/threadManager/TimerManager;->getInstance()Lcom/netease/pharos/threadManager/TimerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/threadManager/TimerManager;->getTimer()Ljava/util/Timer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    int-to-long v5, v2

    iget p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mInterval:I

    mul-int/lit16 p1, p1, 0x3e8

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v7, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :goto_0
    return v2
.end method

.method public clean()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;->setIsOpen(Z)V

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "33333 isOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mTask:Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;

    iget-boolean v1, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck$MyTimeTask;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkCheck"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dns(Ljava/lang/String;)I
    .locals 6

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 825
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 828
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 829
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dns ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LinkCheck"

    invoke-static {v5, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 834
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 836
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {p1, v0}, Lcom/netease/pharos/config/CheckResult;->setmIpList(Ljava/util/ArrayList;)V

    .line 837
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-interface {p1, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    goto :goto_2

    :cond_1
    const/16 v1, 0xb

    :goto_2
    return v1
.end method

.method public getmCheckOverNotifyListener()Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-object v0
.end method

.method public getmCycleTaskStopListener()Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-object v0
.end method

.method public getmExtra()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getmListener()Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    return-object v0
.end method

.method public kcpCheck(I)I
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "LinkCheck"

    const-string v0, "LinkCheck kcpCheck"

    .line 480
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v3, 0xf423f

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 487
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    const/4 v4, 0x3

    const/16 v6, 0xb

    .line 491
    :try_start_0
    new-instance v7, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;

    int-to-long v8, v0

    const-string v0, "123.58.164.135"

    const/16 v10, 0x270d

    invoke-direct {v7, v8, v9, v0, v10}, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;-><init>(JLjava/lang/String;I)V

    const/16 v0, 0x400

    .line 492
    invoke-virtual {v7, v0, v0}, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->WndSize(II)I

    const/16 v0, 0x14

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 493
    invoke-virtual {v7, v9, v0, v8, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->NoDelay(IIII)I

    const/16 v8, 0x800

    new-array v9, v8, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    const/16 v10, 0x73

    .line 498
    aput-byte v10, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move/from16 v10, p1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    .line 504
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 506
    invoke-virtual {v7, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->Send([B)I

    .line 509
    new-instance v0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$1;

    invoke-direct {v0, v1, v7}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$1;-><init>(Lcom/netease/pharos/protocolCheck/ProtocolCheck;Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;)V

    .line 517
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v16, v6

    const-wide/16 v5, 0x7d0

    .line 509
    :try_start_2
    invoke-virtual {v3, v0, v15, v5, v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    new-array v5, v8, [B

    const/4 v6, 0x0

    :cond_1
    new-array v0, v8, [B

    .line 525
    new-instance v15, Ljava/net/DatagramPacket;

    invoke-direct {v15, v0, v8}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    :try_start_3
    iget-object v0, v7, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 530
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 533
    :goto_2
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 534
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getLength()I

    move-result v15

    add-int/2addr v6, v15

    .line 536
    invoke-virtual {v7, v0}, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->Input([B)I

    .line 539
    invoke-virtual {v7, v5}, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->Recv([B)I

    move-result v0

    if-lez v0, :cond_1

    if-le v8, v6, :cond_2

    const-string v0, "UDP Packet loss"

    .line 545
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    .line 547
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual {v0}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    goto :goto_3

    .line 550
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v13, v17, v13

    .line 552
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v13, v14}, Lcom/netease/pharos/config/CheckResult;->addTime(J)V

    .line 553
    invoke-direct {v1, v4, v13, v14}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->isRecordMtr(IJ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 557
    :goto_3
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KCP recePacket length="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v6, 0x0

    goto :goto_5

    :catchall_0
    move v5, v12

    const/4 v6, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    goto :goto_4

    :catchall_1
    move v5, v12

    move/from16 v6, v16

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move/from16 v6, v16

    goto :goto_4

    :catchall_2
    move/from16 v16, v6

    :catchall_3
    move v5, v12

    goto :goto_7

    :catch_3
    move-exception v0

    move/from16 v16, v6

    .line 560
    :goto_4
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "kcpCheck Exception1="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v12, v12, 0x1

    .line 563
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual {v0}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    move v5, v12

    goto :goto_6

    :cond_3
    move/from16 v16, v6

    .line 574
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 575
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v12}, Lcom/netease/pharos/config/CheckResult;->setPacketLossCount(I)V

    .line 576
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v2, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-interface {v0, v2}, Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    return v16

    :catchall_4
    const/4 v5, 0x0

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v5, 0x0

    .line 568
    :goto_6
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kcpCheck Exception2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v5, v5, 0x1

    .line 571
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual {v0}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 574
    :catchall_5
    :goto_7
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 575
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v5}, Lcom/netease/pharos/config/CheckResult;->setPacketLossCount(I)V

    .line 576
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v2, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-interface {v0, v2}, Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    return v6
.end method

.method public ping(Ljava/lang/String;II)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, ")"

    const-string v5, "("

    const-string v6, "/"

    const-string v7, "% packet loss"

    const-string v8, "LinkCheck"

    :try_start_0
    const-string v12, "."

    .line 645
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, " -w "

    const-string v14, ", mCheckResult="

    const-string v15, ", timeout="

    const-string v10, ", num="

    const-string v11, " "

    if-eqz v12, :cond_0

    .line 646
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ping \u53c2\u6570 host= "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/bin/ping -c "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_0

    .line 650
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ping6 \u53c2\u6570 host= "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/bin/ping6 -c "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v10, v0

    .line 653
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 654
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 655
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "-1"

    const-string v12, ""

    move-object v13, v0

    move-object v14, v12

    move-object v12, v13

    .line 656
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v3

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "/avg/"

    .line 659
    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "="

    .line 660
    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 p2, v2

    .line 662
    array-length v2, v0

    if-le v2, v3, :cond_1

    .line 663
    aget-object v2, v0, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 p3, v9

    .line 664
    aget-object v9, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v9, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 667
    aget-object v0, v0, v3

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_1
    move-object/from16 p3, v9

    goto :goto_3

    :cond_2
    move-object/from16 p2, v2

    move-object/from16 p3, v9

    const-string v0, "icmp_seq"

    .line 679
    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v2, "ping line="

    if-eqz v0, :cond_4

    .line 680
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " |="

    .line 681
    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 682
    array-length v2, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v9, 0x9

    if-le v2, v9, :cond_3

    .line 684
    :try_start_5
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 685
    iget-object v2, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v0, v0, v9

    float-to-int v0, v0

    move-object v9, v4

    int-to-long v3, v0

    :try_start_6
    invoke-virtual {v2, v3, v4}, Lcom/netease/pharos/config/CheckResult;->addTime(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v9, v4

    .line 687
    :goto_2
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkCheck  [ping] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cost="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_3
    move-object v9, v4

    goto :goto_4

    :cond_4
    move-object v9, v4

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :goto_4
    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 705
    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 706
    array-length v2, v0

    if-lez v2, :cond_5

    const/4 v2, 0x0

    .line 707
    aget-object v0, v0, v2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 708
    array-length v3, v0

    if-lez v3, :cond_6

    .line 709
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v0, v0, v3

    move-object v13, v0

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 714
    :cond_6
    :goto_5
    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 715
    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 716
    invoke-virtual {v15, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 719
    invoke-virtual {v15, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    :cond_7
    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object v4, v9

    move-object/from16 v9, p3

    goto/16 :goto_1

    :cond_8
    move-object/from16 p2, v2

    move-object/from16 p1, v3

    move-object/from16 p3, v9

    const/4 v2, 0x0

    .line 724
    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->printMessage(Ljava/io/InputStream;)V

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cost="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lost="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ip="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping result:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 731
    :try_start_8
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    if-eqz v0, :cond_9

    .line 732
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v12}, Lcom/netease/pharos/config/CheckResult;->setmAvgRtt(Ljava/lang/String;)V

    .line 733
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v13}, Lcom/netease/pharos/config/CheckResult;->setmLoss(Ljava/lang/String;)V

    .line 734
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v14}, Lcom/netease/pharos/config/CheckResult;->setIp(Ljava/lang/String;)V

    .line 735
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v3, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-interface {v0, v3}, Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    .line 737
    :cond_9
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 738
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 739
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v10, :cond_a

    .line 751
    invoke-static {v10}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->processDestroy(Ljava/lang/Process;)V

    :cond_a
    const/4 v9, 0x0

    goto :goto_9

    :catch_2
    move-exception v0

    const/4 v9, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v9, 0x0

    goto :goto_8

    :catch_4
    move-exception v0

    const/16 v9, 0xb

    goto :goto_6

    :catch_5
    move-exception v0

    const/16 v9, 0xb

    goto :goto_8

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto :goto_a

    :catch_6
    move-exception v0

    const/16 v9, 0xb

    const/4 v10, 0x0

    .line 746
    :goto_6
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping\u5f02\u5e38 InterruptedException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v10, :cond_b

    .line 751
    :goto_7
    invoke-static {v10}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->processDestroy(Ljava/lang/Process;)V

    goto :goto_9

    :catch_7
    move-exception v0

    const/16 v9, 0xb

    const/4 v10, 0x0

    .line 742
    :goto_8
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping\u5f02\u5e38 IOException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v10, :cond_b

    goto :goto_7

    :cond_b
    :goto_9
    return v9

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v10, :cond_c

    .line 751
    invoke-static {v10}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->processDestroy(Ljava/lang/Process;)V

    .line 754
    :cond_c
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public printMessage(Ljava/io/InputStream;)V
    .locals 2

    .line 844
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;-><init>(Lcom/netease/pharos/protocolCheck/ProtocolCheck;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 871
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mInterval:I

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-void
.end method

.method public setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-void
.end method

.method public setmExtra(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mExtra:Ljava/lang/String;

    return-void
.end method

.method public setmListener(Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    return-void
.end method

.method public tcpCheck(Ljava/lang/String;IIII)I
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LinkCheck tcpCheck ip="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", port="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", count="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", time="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", size="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "LinkCheck"

    invoke-static {v11, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :try_start_0
    new-array v14, v6, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    const/16 v15, 0x73

    .line 283
    aput-byte v15, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    new-instance v15, Ljava/net/Socket;

    invoke-direct {v15, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 287
    invoke-virtual {v15, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 288
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v15}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 289
    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "TCP time="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_1
    if-ge v15, v4, :cond_3

    .line 298
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v0, v15, 0x30

    int-to-byte v0, v0

    move/from16 v20, v15

    const/4 v15, 0x0

    .line 299
    :try_start_2
    aput-byte v0, v14, v15

    .line 300
    invoke-virtual {v12, v14, v15, v6}, Ljava/io/OutputStream;->write([BII)V

    const/4 v0, 0x0

    .line 306
    :goto_2
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->read()I

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v21, v12

    const/16 v12, 0xa

    if-eq v15, v12, :cond_1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v21

    goto :goto_2

    :cond_1
    if-eq v6, v0, :cond_2

    .line 313
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TCP Packet loss, count="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ip="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v17, v17, 0x1

    .line 315
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual {v0}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    goto :goto_4

    .line 318
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TCP Packet sucess count="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v2, v22, v18

    .line 321
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v2, v3}, Lcom/netease/pharos/config/CheckResult;->addTime(J)V

    const/4 v12, 0x1

    .line 322
    invoke-direct {v1, v12, v2, v3}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->isRecordMtr(IJ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v21, v12

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v21, v12

    move/from16 v20, v15

    .line 326
    :goto_3
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkCheck tcpCheck Exception1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    add-int/lit8 v17, v17, 0x1

    .line 329
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual {v0}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    :goto_4
    add-int/lit8 v15, v20, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v12, v21

    goto/16 :goto_1

    .line 334
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 335
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->shutdownInput()V

    .line 336
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->shutdownOutput()V

    .line 337
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    move/from16 v4, v17

    const/4 v12, 0x0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkCheck tcpCheck Exception2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 347
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/report/NetmonReport;

    int-to-long v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/netease/pharos/report/NetmonReport;->setPacketLossCount(J)V

    :cond_5
    const/16 v12, 0xb

    .line 352
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkCheck tcpCheck mCheckResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v4}, Lcom/netease/pharos/config/CheckResult;->setPacketLossCount(I)V

    .line 354
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v2, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-interface {v0, v2}, Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    return v12
.end method

.method public udpCheck(Ljava/lang/String;IIII)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p5

    const-string v5, "LinkCheck udpCheck mCheckResult="

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LinkCheck udpCheck ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", port="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mExtra="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mExtra:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LinkCheck"

    invoke-static {v7, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "LinkCheck udpCheck"

    .line 370
    invoke-static {v7, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v6, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/pharos/report/NetmonReport;

    .line 381
    new-array v9, v4, [B

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v4, :cond_0

    const/16 v12, 0x73

    .line 384
    aput-byte v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 391
    :cond_0
    new-array v11, v4, [B

    const/4 v12, 0x0

    const/16 v13, 0xb

    .line 398
    :try_start_0
    new-instance v14, Ljava/net/DatagramSocket;

    invoke-direct {v14, v12}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v12, 0x1

    .line 399
    :try_start_1
    invoke-virtual {v14, v12}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 400
    invoke-virtual {v14, v12}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    const/16 v15, 0x3e8

    .line 406
    invoke-virtual {v14, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 407
    new-instance v15, Ljava/net/DatagramPacket;

    .line 408
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    invoke-direct {v15, v9, v4, v10, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 409
    new-instance v9, Ljava/net/DatagramPacket;

    invoke-direct {v9, v11, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    if-nez v6, :cond_1

    .line 412
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v3}, Lcom/netease/pharos/config/CheckResult;->setPacketLossCount(I)V

    .line 413
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v4, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-interface {v0, v4}, Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v4}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return v13

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v3, :cond_3

    .line 419
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 420
    invoke-virtual {v14, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 421
    invoke-virtual {v14, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 423
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-eq v4, v0, :cond_2

    const-string v0, "UDP Packet loss"

    .line 424
    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    .line 426
    invoke-virtual {v6}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    goto :goto_2

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UDP receive Packet count="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getLength()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v12, v18, v16

    .line 432
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v12, v13}, Lcom/netease/pharos/config/CheckResult;->addTime(J)V

    .line 434
    invoke-direct {v1, v8, v12, v13}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->isRecordMtr(IJ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    const/4 v12, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 438
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "udpCheck Exception e="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v12, 0x1

    add-int/2addr v11, v12

    .line 441
    invoke-virtual {v6}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0xb

    goto :goto_1

    .line 446
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UCP recePacket length="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v10, 0x0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v12, v14

    const/4 v10, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v12, v14

    :goto_4
    const/16 v10, 0xb

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    .line 451
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "udpCheck Exception = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ip="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v6}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    move v11, v3

    move-object v14, v12

    .line 456
    :goto_6
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, v11}, Lcom/netease/pharos/config/CheckResult;->setPacketLossCount(I)V

    .line 458
    iget-object v0, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v2, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-interface {v0, v2}, Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v2}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_5

    .line 464
    invoke-virtual {v14}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 465
    invoke-virtual {v14}, Ljava/net/DatagramSocket;->disconnect()V

    .line 468
    :cond_4
    invoke-virtual {v14}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 469
    invoke-virtual {v14}, Ljava/net/DatagramSocket;->close()V

    :cond_5
    return v10
.end method
