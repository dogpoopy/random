.class public Lcom/netease/pharos/report/NetmonReport;
.super Ljava/lang/Object;
.source "NetmonReport.java"


# instance fields
.field private mCliIp:Ljava/lang/String;

.field private mCliMtr:Ljava/lang/String;

.field private mKcptestTime:J

.field private mLinktestId:Ljava/lang/String;

.field private mLinktestProtocol:Ljava/lang/String;

.field private mNetCarrier:Ljava/lang/String;

.field private mNetworkCondition:Ljava/lang/String;

.field private mPacketCount:J

.field public mPacketLossCount:J

.field private mSvrIp:Ljava/lang/String;

.field private mSvrMtr:Ljava/lang/String;

.field private mTcptestTime:J

.field private mTimeZone:Ljava/lang/String;

.field private mUdptestTime:J

.field private mWifiSignal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 189
    iput-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    return-void
.end method


# virtual methods
.method public declared-synchronized addPacketLossCount()V
    .locals 4

    monitor-enter p0

    .line 201
    :try_start_0
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCliIp()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mCliIp:Ljava/lang/String;

    return-object v0
.end method

.method public getCliMtr()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mCliMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getKcptestTime()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mKcptestTime:J

    return-wide v0
.end method

.method public getLinktestId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestId:Ljava/lang/String;

    return-object v0
.end method

.method public getLinktestProtocol()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getNetCarrier()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mNetCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCondition()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mNetworkCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketCount()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketCount:J

    return-wide v0
.end method

.method public getPacketLossCount()J
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    return-wide v0
.end method

.method public getSvrIp()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrIp:Ljava/lang/String;

    return-object v0
.end method

.method public getSvrMtr()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getTcptestTime()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mTcptestTime:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUdptestTime()J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mUdptestTime:J

    return-wide v0
.end method

.method public getWifiSignal()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/netease/pharos/report/NetmonReport;->mWifiSignal:I

    return v0
.end method

.method public setCliIp(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mCliIp:Ljava/lang/String;

    return-void
.end method

.method public setCliMtr(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mCliMtr:Ljava/lang/String;

    return-void
.end method

.method public setKcptestTime(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mKcptestTime:J

    return-void
.end method

.method public setLinktestId(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestId:Ljava/lang/String;

    return-void
.end method

.method public setLinktestProtocol(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestProtocol:Ljava/lang/String;

    return-void
.end method

.method public setNetCarrier(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mNetCarrier:Ljava/lang/String;

    return-void
.end method

.method public setNetworkCondition(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mNetworkCondition:Ljava/lang/String;

    return-void
.end method

.method public setPacketCount(J)V
    .locals 0

    .line 213
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketCount:J

    return-void
.end method

.method public setPacketLossCount(J)V
    .locals 0

    .line 205
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    return-void
.end method

.method public setSvrIp(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrIp:Ljava/lang/String;

    return-void
.end method

.method public setSvrMtr(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrMtr:Ljava/lang/String;

    return-void
.end method

.method public setTcptestTime(J)V
    .locals 0

    .line 150
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mTcptestTime:J

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setUdptestTime(J)V
    .locals 0

    .line 166
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mUdptestTime:J

    return-void
.end method

.method public setWifiSignal(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/netease/pharos/report/NetmonReport;->mWifiSignal:I

    return-void
.end method
