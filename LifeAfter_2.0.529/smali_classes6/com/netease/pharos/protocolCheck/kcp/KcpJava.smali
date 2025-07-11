.class public abstract Lcom/netease/pharos/protocolCheck/kcp/KcpJava;
.super Ljava/lang/Object;
.source "KcpJava.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;
    }
.end annotation


# instance fields
.field public final IKCP_ACK_FAST:I

.field public final IKCP_ASK_SEND:I

.field public final IKCP_ASK_TELL:I

.field public final IKCP_CMD_ACK:I

.field public final IKCP_CMD_PUSH:I

.field public final IKCP_CMD_WASK:I

.field public final IKCP_CMD_WINS:I

.field public final IKCP_DEADLINK:I

.field public final IKCP_INTERVAL:I

.field public final IKCP_MTU_DEF:I

.field public final IKCP_OVERHEAD:I

.field public final IKCP_PROBE_INIT:I

.field public final IKCP_PROBE_LIMIT:I

.field public final IKCP_RTO_DEF:I

.field public final IKCP_RTO_MAX:I

.field public final IKCP_RTO_MIN:I

.field public final IKCP_RTO_NDL:I

.field public final IKCP_THRESH_INIT:I

.field public final IKCP_THRESH_MIN:I

.field public final IKCP_WND_RCV:I

.field public final IKCP_WND_SND:I

.field acklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field buffer:[B

.field conv:J

.field current:J

.field cwnd:J

.field dead_link:J

.field fastresend:J

.field incr:J

.field interval:J

.field logmask:J

.field mss:J

.field mtu:J

.field nocwnd:J

.field nodelay:J

.field nrcv_buf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;",
            ">;"
        }
    .end annotation
.end field

.field nrcv_que:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;",
            ">;"
        }
    .end annotation
.end field

.field nsnd_buf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;",
            ">;"
        }
    .end annotation
.end field

.field nsnd_que:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;",
            ">;"
        }
    .end annotation
.end field

.field probe:J

.field probe_wait:J

.field rcv_nxt:J

.field rcv_wnd:J

.field rmt_wnd:J

.field rx_minrto:J

.field rx_rto:J

.field rx_rttval:J

.field rx_srtt:J

.field snd_nxt:J

.field snd_una:J

.field snd_wnd:J

.field ssthresh:J

.field state:J

.field ts_flush:J

.field ts_lastack:J

.field ts_probe:J

.field ts_recent:J

.field updated:J

.field xmit:J


# direct methods
.method public constructor <init>(J)V
    .locals 9

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 16
    iput v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_RTO_NDL:I

    const/16 v0, 0x64

    .line 17
    iput v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_RTO_MIN:I

    const/16 v1, 0xc8

    .line 18
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_RTO_DEF:I

    const v1, 0xea60

    .line 19
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_RTO_MAX:I

    const/16 v1, 0x51

    .line 20
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_CMD_PUSH:I

    const/16 v1, 0x52

    .line 21
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_CMD_ACK:I

    const/16 v1, 0x53

    .line 22
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_CMD_WASK:I

    const/16 v1, 0x54

    .line 23
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_CMD_WINS:I

    const/4 v1, 0x1

    .line 24
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_ASK_SEND:I

    const/4 v1, 0x2

    .line 25
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_ASK_TELL:I

    const/16 v2, 0x20

    .line 26
    iput v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_WND_SND:I

    .line 27
    iput v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_WND_RCV:I

    const/16 v2, 0x578

    .line 28
    iput v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_MTU_DEF:I

    const/4 v2, 0x3

    .line 29
    iput v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_ACK_FAST:I

    .line 30
    iput v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_INTERVAL:I

    const/16 v0, 0x18

    .line 31
    iput v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_OVERHEAD:I

    const/16 v0, 0xa

    .line 32
    iput v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_DEADLINK:I

    .line 33
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_THRESH_INIT:I

    .line 34
    iput v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_THRESH_MIN:I

    const/16 v0, 0x1b58

    .line 35
    iput v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_PROBE_INIT:I

    const v0, 0x1d4c0

    .line 36
    iput v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->IKCP_PROBE_LIMIT:I

    const-wide/16 v0, 0x0

    .line 171
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->conv:J

    .line 173
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_una:J

    .line 174
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_nxt:J

    .line 175
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    .line 176
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_recent:J

    .line 177
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_lastack:J

    .line 178
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_probe:J

    .line 179
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    const-wide/16 v3, 0x20

    .line 180
    iput-wide v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_wnd:J

    .line 181
    iput-wide v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    .line 182
    iput-wide v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rmt_wnd:J

    .line 183
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    .line 184
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    .line 185
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    const-wide/16 v3, 0x578

    .line 186
    iput-wide v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mtu:J

    const-wide/16 v5, 0x18

    sub-long v7, v3, v5

    .line 187
    iput-wide v7, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    add-long/2addr v3, v5

    long-to-int v4, v3

    mul-int/lit8 v4, v4, 0x3

    .line 188
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    .line 193
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->state:J

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    .line 197
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_srtt:J

    .line 198
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rttval:J

    const-wide/16 v2, 0xc8

    .line 199
    iput-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rto:J

    const-wide/16 v2, 0x64

    .line 200
    iput-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_minrto:J

    .line 201
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    .line 202
    iput-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->interval:J

    .line 203
    iput-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_flush:J

    .line 204
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nodelay:J

    .line 205
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->updated:J

    .line 206
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->logmask:J

    const-wide/16 v2, 0x2

    .line 207
    iput-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ssthresh:J

    .line 208
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->fastresend:J

    .line 209
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nocwnd:J

    .line 210
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->xmit:J

    const-wide/16 v0, 0xa

    .line 211
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->dead_link:J

    .line 216
    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->conv:J

    return-void
.end method

.method static _ibound_(JJJ)J
    .locals 0

    .line 120
    invoke-static {p0, p1, p2, p3}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_imax_(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_imin_(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static _imax_(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method

.method static _imin_(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method

.method static _itimediff(JJ)I
    .locals 0

    sub-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method

.method public static ikcp_decode16u([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 66
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static ikcp_decode32u([BI)J
    .locals 7

    add-int/lit8 v0, p1, 0x3

    .line 93
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x0

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static ikcp_decode8u([BI)B
    .locals 0

    add-int/lit8 p1, p1, 0x0

    .line 47
    aget-byte p0, p0, p1

    return p0
.end method

.method public static ikcp_encode16u([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 56
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x0

    shr-int/lit8 p2, p2, 0x0

    int-to-byte p2, p2

    .line 57
    aput-byte p2, p0, p1

    return-void
.end method

.method public static ikcp_encode32u([BIJ)V
    .locals 3

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 79
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 80
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    shr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 81
    aput-byte v1, p0, v0

    const/4 v0, 0x0

    add-int/2addr p1, v0

    shr-long/2addr p2, v0

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 82
    aput-byte p2, p0, p1

    return-void
.end method

.method public static ikcp_encode8u([BIB)V
    .locals 0

    add-int/lit8 p1, p1, 0x0

    .line 42
    aput-byte p2, p0, p1

    return-void
.end method

.method public static slice(Ljava/util/ArrayList;II)V
    .locals 3

    .line 101
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sub-int v2, p2, p1

    if-ge v1, v2, :cond_0

    add-int v2, v1, p1

    .line 104
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public Check(J)J
    .locals 8

    .line 832
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_flush:J

    .line 837
    iget-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->updated:J

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    return-wide p1

    .line 841
    :cond_0
    invoke-static {p1, p2, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_1

    invoke-static {p1, p2, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    const/16 v3, -0x2710

    if-ge v2, v3, :cond_2

    :cond_1
    move-wide v0, p1

    .line 845
    :cond_2
    invoke-static {p1, p2, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    if-ltz v2, :cond_3

    return-wide p1

    .line 849
    :cond_3
    invoke-static {v0, v1, p1, p2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v0

    int-to-long v0, v0

    .line 851
    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/32 v3, 0x7fffffff

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 852
    iget-wide v5, v5, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->resendts:J

    invoke-static {v5, v6, p1, p2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v5

    if-gtz v5, :cond_5

    return-wide p1

    :cond_5
    int-to-long v5, v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_4

    move-wide v3, v5

    goto :goto_0

    :cond_6
    cmp-long v2, v3, v0

    if-gez v2, :cond_7

    move-wide v0, v3

    .line 862
    :cond_7
    iget-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->interval:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_8

    move-wide v0, v2

    :cond_8
    add-long/2addr p1, v0

    return-wide p1
.end method

.method public Input([B)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 480
    iget-wide v2, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_una:J

    .line 481
    array-length v4, v1

    const/16 v5, 0x18

    const/4 v6, 0x0

    if-ge v4, v5, :cond_0

    return v6

    :cond_0
    const/4 v4, 0x0

    .line 492
    :goto_0
    array-length v7, v1

    sub-int/2addr v7, v4

    if-ge v7, v5, :cond_5

    .line 569
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_una:J

    invoke-static {v4, v5, v2, v3}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v1

    if-lez v1, :cond_4

    .line 570
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    iget-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rmt_wnd:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    .line 571
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    .line 572
    iget-wide v9, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ssthresh:J

    const-wide/16 v11, 0x1

    cmp-long v5, v1, v9

    if-gez v5, :cond_1

    add-long/2addr v1, v11

    .line 573
    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    .line 574
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    goto :goto_1

    .line 576
    :cond_1
    iget-wide v9, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    cmp-long v5, v9, v7

    if-gez v5, :cond_2

    .line 577
    iput-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    .line 579
    :cond_2
    iget-wide v9, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    mul-long v13, v7, v7

    div-long/2addr v13, v9

    const-wide/16 v15, 0x10

    div-long v15, v7, v15

    add-long/2addr v13, v15

    add-long/2addr v9, v13

    iput-wide v9, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    add-long v13, v1, v11

    mul-long v13, v13, v7

    cmp-long v5, v13, v9

    if-gtz v5, :cond_3

    add-long/2addr v1, v11

    .line 581
    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    .line 584
    :cond_3
    :goto_1
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 585
    iput-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    mul-long v3, v3, v7

    .line 586
    iput-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    :cond_4
    return v6

    .line 496
    :cond_5
    invoke-static {v1, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v7

    add-int/lit8 v4, v4, 0x4

    .line 499
    iget-wide v9, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->conv:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_6

    const/4 v1, -0x1

    return v1

    .line 503
    :cond_6
    invoke-static {v1, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_decode8u([BI)B

    move-result v9

    add-int/lit8 v4, v4, 0x1

    .line 505
    invoke-static {v1, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_decode8u([BI)B

    move-result v10

    add-int/lit8 v4, v4, 0x1

    .line 507
    invoke-static {v1, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_decode16u([BI)I

    move-result v11

    add-int/lit8 v4, v4, 0x2

    .line 509
    invoke-static {v1, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v12

    add-int/lit8 v4, v4, 0x4

    .line 511
    invoke-static {v1, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v14

    add-int/lit8 v4, v4, 0x4

    .line 513
    invoke-static {v1, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v5

    add-int/lit8 v4, v4, 0x4

    move-wide/from16 v17, v2

    .line 515
    invoke-static {v1, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x4

    move/from16 v19, v10

    .line 518
    array-length v10, v1

    sub-int/2addr v10, v4

    move-wide/from16 v20, v7

    int-to-long v7, v10

    cmp-long v10, v7, v2

    if-gez v10, :cond_7

    const/4 v1, -0x2

    return v1

    :cond_7
    const/16 v10, 0x53

    const/16 v7, 0x52

    const/16 v8, 0x51

    if-eq v9, v8, :cond_8

    if-eq v9, v7, :cond_8

    if-eq v9, v10, :cond_8

    const/16 v10, 0x54

    if-eq v9, v10, :cond_8

    const/4 v10, -0x3

    return v10

    :cond_8
    int-to-long v10, v11

    .line 526
    iput-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rmt_wnd:J

    .line 527
    invoke-virtual {v0, v5, v6}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->parse_una(J)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->shrink_buf()V

    if-ne v7, v9, :cond_a

    .line 531
    iget-wide v5, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    invoke-static {v5, v6, v12, v13}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v5

    if-ltz v5, :cond_9

    .line 532
    iget-wide v5, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    invoke-static {v5, v6, v12, v13}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->update_ack(I)V

    .line 534
    :cond_9
    invoke-virtual {v0, v14, v15}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->parse_ack(J)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->shrink_buf()V

    move v7, v4

    goto :goto_3

    :cond_a
    if-ne v8, v9, :cond_d

    .line 537
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    move/from16 v22, v4

    move-wide/from16 v23, v5

    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    add-long/2addr v7, v4

    invoke-static {v14, v15, v7, v8}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v4

    if-gez v4, :cond_c

    .line 538
    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ack_push(JJ)V

    .line 539
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    invoke-static {v14, v15, v4, v5}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v4

    if-ltz v4, :cond_c

    .line 540
    new-instance v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    long-to-int v5, v2

    invoke-direct {v4, v0, v5}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;-><init>(Lcom/netease/pharos/protocolCheck/kcp/KcpJava;I)V

    move-wide/from16 v6, v20

    .line 541
    iput-wide v6, v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->conv:J

    int-to-long v6, v9

    .line 542
    iput-wide v6, v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->cmd:J

    move/from16 v6, v19

    int-to-long v6, v6

    .line 543
    iput-wide v6, v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->frg:J

    .line 544
    iput-wide v10, v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->wnd:J

    .line 545
    iput-wide v12, v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->ts:J

    .line 546
    iput-wide v14, v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    move-wide/from16 v6, v23

    .line 547
    iput-wide v6, v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->una:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_b

    .line 550
    iget-object v6, v4, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    move/from16 v7, v22

    const/4 v8, 0x0

    invoke-static {v1, v7, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_b
    move/from16 v7, v22

    const/4 v8, 0x0

    .line 553
    :goto_2
    invoke-virtual {v0, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->parse_data(Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;)V

    goto :goto_4

    :cond_c
    move/from16 v7, v22

    :goto_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    move v7, v4

    const/16 v4, 0x53

    const/4 v8, 0x0

    if-ne v4, v9, :cond_e

    .line 559
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    const-wide/16 v9, 0x2

    or-long/2addr v4, v9

    iput-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    goto :goto_4

    :cond_e
    const/16 v4, 0x54

    if-ne v4, v9, :cond_f

    :goto_4
    long-to-int v3, v2

    add-int v4, v7, v3

    move-wide/from16 v2, v17

    const/16 v5, 0x18

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v2, -0x3

    return v2
.end method

.method public Interval(I)I
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x1388

    if-le p1, v1, :cond_0

    const/16 p1, 0x1388

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    const/16 p1, 0xa

    :cond_1
    :goto_0
    int-to-long v0, p1

    .line 892
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->interval:J

    const/4 p1, 0x0

    return p1
.end method

.method public NoDelay(IIII)I
    .locals 2

    if-lez p1, :cond_1

    int-to-long v0, p1

    .line 904
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nodelay:J

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1e

    .line 906
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_minrto:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 908
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_minrto:J

    :cond_1
    :goto_0
    if-ltz p2, :cond_4

    const/16 p1, 0xa

    const/16 v0, 0x1388

    if-le p2, v0, :cond_2

    const/16 p2, 0x1388

    goto :goto_1

    :cond_2
    if-ge p2, p1, :cond_3

    const/16 p2, 0xa

    :cond_3
    :goto_1
    int-to-long p1, p2

    .line 918
    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->interval:J

    :cond_4
    if-ltz p3, :cond_5

    int-to-long p1, p3

    .line 922
    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->fastresend:J

    :cond_5
    if-ltz p4, :cond_6

    int-to-long p1, p4

    .line 926
    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nocwnd:J

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public PeekSize()I
    .locals 11

    .line 222
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 228
    iget-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->frg:J

    const-wide/16 v5, 0x0

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    .line 229
    iget-object v0, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v0, v0

    return v0

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->frg:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    cmp-long v0, v3, v7

    if-gez v0, :cond_2

    return v1

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 239
    iget-object v3, v1, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v3, v3

    add-int/2addr v2, v3

    .line 240
    iget-wide v3, v1, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->frg:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_3

    :cond_4
    return v2
.end method

.method public Recv([B)I
    .locals 10

    .line 252
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->PeekSize()I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, -0x2

    return p1

    .line 261
    :cond_1
    array-length v1, p1

    if-le v0, v1, :cond_2

    const/4 p1, -0x3

    return p1

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 271
    iget-object v6, v5, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    iget-object v7, v5, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v7, v7

    invoke-static {v6, v4, p1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v6, v5, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v6, v6

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v6, 0x0

    .line 274
    iget-wide v8, v5, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->frg:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    :cond_5
    if-lez v3, :cond_6

    .line 280
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v3, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    .line 285
    :cond_6
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 286
    iget-wide v5, v1, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    iget-wide v7, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v5, v3

    iget-wide v7, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_7

    .line 287
    iget-object v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-wide v5, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-lez v4, :cond_8

    .line 296
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v4, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    .line 300
    :cond_8
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v3, p1

    iget-wide v5, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_9

    if-eqz v0, :cond_9

    .line 303
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    const-wide/16 v3, 0x2

    or-long/2addr v0, v3

    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    :cond_9
    return v2
.end method

.method public Send([B)I
    .locals 12

    .line 313
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 319
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 322
    :cond_1
    array-length v0, p1

    int-to-long v0, v0

    add-long/2addr v0, v2

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    long-to-int v1, v0

    long-to-int v0, v2

    div-int/2addr v1, v0

    :goto_0
    const/16 v0, 0xff

    if-ge v0, v1, :cond_2

    const/4 p1, -0x2

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 334
    :cond_3
    array-length v0, p1

    int-to-long v2, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    .line 337
    iget-wide v7, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    cmp-long v9, v2, v7

    if-lez v9, :cond_4

    goto :goto_2

    :cond_4
    move-wide v7, v2

    :goto_2
    long-to-int v8, v7

    .line 338
    new-instance v7, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    invoke-direct {v7, p0, v8}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;-><init>(Lcom/netease/pharos/protocolCheck/kcp/KcpJava;I)V

    .line 339
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    const-string v11, "the size is %d\n"

    invoke-virtual {v9, v11, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 340
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    const-string v11, "the offset is %d\n"

    invoke-virtual {v9, v11, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 341
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v10, v4, [Ljava/lang/Object;

    array-length v11, p1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    const-string v11, "the buffer is %d\n"

    invoke-virtual {v9, v11, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 342
    iget-object v9, v7, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    invoke-static {p1, v6, v9, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v8

    sub-int v8, v1, v5

    sub-int/2addr v8, v4

    int-to-long v8, v8

    .line 344
    iput-wide v8, v7, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->frg:J

    .line 345
    iget-object v8, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-wide v7, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    cmp-long v9, v2, v7

    if-lez v9, :cond_5

    sub-long/2addr v2, v7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public SetMtu(I)I
    .locals 5

    const/16 v0, 0x32

    if-lt p1, v0, :cond_1

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x18

    mul-int/lit8 v0, v0, 0x3

    .line 875
    new-array v0, v0, [B

    int-to-long v1, p1

    .line 880
    iput-wide v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mtu:J

    const-wide/16 v3, 0x18

    sub-long/2addr v1, v3

    .line 881
    iput-wide v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    .line 882
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public Update(J)V
    .locals 5

    .line 800
    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    .line 802
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->updated:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x1

    .line 803
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->updated:J

    .line 804
    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_flush:J

    .line 807
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_flush:J

    invoke-static {p1, p2, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result p1

    const/16 p2, 0x2710

    if-ge p1, p2, :cond_1

    const/16 p2, -0x2710

    if-ge p1, p2, :cond_2

    .line 810
    :cond_1
    iget-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_flush:J

    const/4 p1, 0x0

    :cond_2
    if-ltz p1, :cond_4

    .line 815
    iget-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_flush:J

    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->interval:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_flush:J

    .line 816
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    invoke-static {v0, v1, p1, p2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result p1

    if-ltz p1, :cond_3

    .line 817
    iget-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->interval:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_flush:J

    .line 819
    :cond_3
    invoke-virtual {p0}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->flush()V

    :cond_4
    return-void
.end method

.method public WaitSnd()I
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public WndSize(II)I
    .locals 2

    if-lez p1, :cond_0

    int-to-long v0, p1

    .line 935
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_wnd:J

    :cond_0
    if-lez p2, :cond_1

    int-to-long p1, p2

    .line 939
    iput-wide p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method ack_push(JJ)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method flush()V
    .locals 26

    move-object/from16 v0, p0

    .line 604
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    .line 609
    iget-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->updated:J

    const-wide/16 v5, 0x0

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    return-void

    .line 613
    :cond_0
    new-instance v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;-><init>(Lcom/netease/pharos/protocolCheck/kcp/KcpJava;I)V

    .line 614
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->conv:J

    iput-wide v7, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->conv:J

    const-wide/16 v7, 0x52

    .line 615
    iput-wide v7, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->cmd:J

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->wnd_unused()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->wnd:J

    .line 617
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    iput-wide v7, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->una:J

    .line 620
    iget-object v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x1

    if-ge v8, v7, :cond_2

    add-int/lit8 v11, v9, 0x18

    int-to-long v11, v11

    .line 623
    iget-wide v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mtu:J

    cmp-long v15, v11, v13

    if-lez v15, :cond_1

    .line 624
    iget-object v11, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v0, v11, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->output([BI)V

    const/4 v9, 0x0

    .line 628
    :cond_1
    iget-object v11, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    mul-int/lit8 v12, v8, 0x2

    add-int/lit8 v13, v12, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iput-wide v13, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    .line 629
    iget-object v11, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    add-int/2addr v12, v10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->ts:J

    .line 630
    iget-object v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v3, v10, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->encode([BI)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 632
    :cond_2
    iget-object v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 635
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rmt_wnd:J

    const-wide/16 v11, 0x2

    cmp-long v15, v5, v7

    if-nez v15, :cond_7

    .line 636
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    const-wide/16 v13, 0x1b58

    cmp-long v17, v5, v7

    if-nez v17, :cond_3

    .line 637
    iput-wide v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    .line 638
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    add-long/2addr v7, v13

    iput-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_probe:J

    move-wide v4, v5

    const-wide/16 v7, 0x1

    goto :goto_2

    .line 640
    :cond_3
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_probe:J

    invoke-static {v7, v8, v4, v5}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v4

    if-ltz v4, :cond_6

    .line 641
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    cmp-long v7, v4, v13

    if-gez v7, :cond_4

    .line 642
    iput-wide v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    .line 644
    :cond_4
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    div-long v7, v4, v11

    add-long/2addr v4, v7

    iput-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    const-wide/32 v7, 0x1d4c0

    cmp-long v13, v4, v7

    if-lez v13, :cond_5

    .line 646
    iput-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    .line 648
    :cond_5
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->current:J

    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    add-long/2addr v4, v7

    iput-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_probe:J

    .line 649
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    const-wide/16 v7, 0x1

    or-long/2addr v4, v7

    iput-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    goto :goto_1

    :cond_6
    const-wide/16 v7, 0x1

    :goto_1
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_7
    move-wide v4, v5

    const-wide/16 v7, 0x1

    .line 653
    iput-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ts_probe:J

    .line 654
    iput-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe_wait:J

    .line 658
    :goto_2
    iget-wide v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    and-long/2addr v13, v7

    cmp-long v7, v13, v4

    if-eqz v7, :cond_9

    const-wide/16 v4, 0x53

    .line 659
    iput-wide v4, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->cmd:J

    add-int/lit8 v4, v9, 0x18

    int-to-long v4, v4

    .line 660
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mtu:J

    cmp-long v13, v4, v7

    if-lez v13, :cond_8

    .line 661
    iget-object v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v0, v4, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->output([BI)V

    const/4 v9, 0x0

    .line 664
    :cond_8
    iget-object v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v3, v4, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->encode([BI)I

    move-result v4

    add-int/2addr v9, v4

    .line 668
    :cond_9
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    and-long/2addr v4, v11

    const-wide/16 v7, 0x0

    cmp-long v13, v4, v7

    if-eqz v13, :cond_b

    const-wide/16 v4, 0x54

    .line 669
    iput-wide v4, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->cmd:J

    add-int/lit8 v4, v9, 0x18

    int-to-long v4, v4

    .line 670
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mtu:J

    cmp-long v13, v4, v7

    if-lez v13, :cond_a

    .line 671
    iget-object v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v0, v4, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->output([BI)V

    const/4 v9, 0x0

    .line 674
    :cond_a
    iget-object v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v3, v4, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->encode([BI)I

    move-result v4

    add-int/2addr v9, v4

    :cond_b
    const-wide/16 v4, 0x0

    .line 677
    iput-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->probe:J

    .line 680
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_wnd:J

    iget-wide v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rmt_wnd:J

    invoke-static {v7, v8, v13, v14}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_imin_(JJ)J

    move-result-wide v7

    .line 681
    iget-wide v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nocwnd:J

    cmp-long v19, v4, v13

    if-nez v19, :cond_c

    .line 682
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    invoke-static {v4, v5, v7, v8}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_imin_(JJ)J

    move-result-wide v7

    .line 686
    :cond_c
    iget-object v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 687
    iget-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_nxt:J

    iget-wide v14, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_una:J

    add-long/2addr v14, v7

    invoke-static {v10, v11, v14, v15}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v10

    if-ltz v10, :cond_d

    goto :goto_4

    .line 691
    :cond_d
    iget-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->conv:J

    iput-wide v10, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->conv:J

    const-wide/16 v10, 0x51

    .line 692
    iput-wide v10, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->cmd:J

    .line 693
    iget-wide v10, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->wnd:J

    iput-wide v10, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->wnd:J

    .line 694
    iput-wide v1, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->ts:J

    .line 695
    iget-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_nxt:J

    iput-wide v10, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    .line 696
    iget-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    iput-wide v10, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->una:J

    .line 697
    iput-wide v1, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->resendts:J

    .line 698
    iget-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rto:J

    iput-wide v10, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    const-wide/16 v10, 0x0

    .line 699
    iput-wide v10, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->fastack:J

    .line 700
    iput-wide v10, v13, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    .line 701
    iget-object v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_nxt:J

    const-wide/16 v13, 0x1

    add-long/2addr v10, v13

    iput-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_nxt:J

    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    const-wide/16 v11, 0x2

    goto :goto_3

    :cond_e
    :goto_4
    if-lez v5, :cond_f

    .line 707
    iget-object v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v4, v5, v7}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    .line 711
    :cond_f
    iget-wide v4, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->fastresend:J

    const-wide/16 v10, 0x0

    cmp-long v13, v4, v10

    if-lez v13, :cond_10

    goto :goto_5

    :cond_10
    const-wide/16 v4, -0x1

    .line 712
    :goto_5
    iget-wide v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nodelay:J

    cmp-long v21, v13, v10

    if-nez v21, :cond_11

    iget-wide v10, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rto:J

    const/4 v13, 0x3

    shr-long/2addr v10, v13

    goto :goto_6

    :cond_11
    const-wide/16 v10, 0x0

    .line 715
    :goto_6
    iget-object v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v21, 0x0

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v6, v22

    check-cast v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    move-object/from16 v23, v13

    .line 717
    iget-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    const-wide/16 v17, 0x0

    cmp-long v24, v17, v12

    if-nez v24, :cond_12

    .line 719
    iget-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    const-wide/16 v15, 0x1

    add-long/2addr v12, v15

    iput-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    .line 720
    iget-wide v12, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rto:J

    iput-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    .line 721
    iget-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    add-long/2addr v12, v1

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->resendts:J

    const-wide/16 v7, 0x0

    :goto_8
    const/4 v12, 0x1

    goto :goto_a

    .line 722
    :cond_12
    iget-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->resendts:J

    invoke-static {v1, v2, v12, v13}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v12

    if-ltz v12, :cond_14

    .line 724
    iget-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    const-wide/16 v15, 0x1

    add-long/2addr v12, v15

    iput-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    .line 725
    iget-wide v12, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->xmit:J

    add-long/2addr v12, v15

    iput-wide v12, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->xmit:J

    .line 726
    iget-wide v12, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nodelay:J

    const-wide/16 v17, 0x0

    cmp-long v21, v17, v12

    if-nez v21, :cond_13

    .line 727
    iget-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rto:J

    add-long/2addr v12, v7

    iput-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    goto :goto_9

    .line 729
    :cond_13
    iget-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    iget-wide v12, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rto:J

    const-wide/16 v19, 0x2

    div-long v12, v12, v19

    add-long/2addr v7, v12

    iput-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    .line 731
    :goto_9
    iget-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    add-long/2addr v7, v1

    iput-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->resendts:J

    const-wide/16 v7, 0x0

    const/4 v12, 0x1

    const/16 v21, 0x1

    goto :goto_a

    .line 733
    :cond_14
    iget-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->fastack:J

    cmp-long v12, v7, v4

    if-ltz v12, :cond_15

    .line 735
    iget-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    iput-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    const-wide/16 v7, 0x0

    .line 736
    iput-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->fastack:J

    .line 737
    iget-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    add-long/2addr v12, v1

    iput-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->resendts:J

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_15
    const-wide/16 v7, 0x0

    const/4 v12, 0x0

    :goto_a
    if-eqz v12, :cond_18

    .line 742
    iput-wide v1, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->ts:J

    .line 743
    iget-wide v12, v3, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->wnd:J

    iput-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->wnd:J

    .line 744
    iget-wide v12, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    iput-wide v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->una:J

    .line 746
    iget-object v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v12, v12

    add-int/lit8 v12, v12, 0x18

    add-int/2addr v12, v9

    int-to-long v12, v12

    .line 747
    iget-wide v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mtu:J

    cmp-long v25, v12, v7

    if-ltz v25, :cond_16

    .line 748
    iget-object v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v0, v7, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->output([BI)V

    const/4 v9, 0x0

    .line 752
    :cond_16
    iget-object v7, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v6, v7, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->encode([BI)I

    move-result v7

    add-int/2addr v9, v7

    .line 753
    iget-object v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v7, v7

    if-lez v7, :cond_17

    .line 754
    iget-object v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    iget-object v8, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    iget-object v12, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v12, v12

    const/4 v13, 0x0

    invoke-static {v7, v13, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    iget-object v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v7, v7

    add-int/2addr v9, v7

    goto :goto_b

    :cond_17
    const/4 v13, 0x0

    .line 758
    :goto_b
    iget-wide v6, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    move v8, v14

    iget-wide v13, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->dead_link:J

    cmp-long v12, v6, v13

    const-wide/16 v6, -0x1

    if-ltz v12, :cond_19

    .line 759
    iput-wide v6, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->state:J

    goto :goto_c

    :cond_18
    move v8, v14

    const-wide/16 v6, -0x1

    :cond_19
    :goto_c
    move v14, v8

    move-object/from16 v13, v23

    goto/16 :goto_7

    :cond_1a
    if-lez v9, :cond_1b

    .line 766
    iget-object v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->buffer:[B

    invoke-virtual {v0, v1, v9}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->output([BI)V

    :cond_1b
    if-eqz v14, :cond_1d

    .line 771
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_nxt:J

    iget-wide v6, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_una:J

    sub-long/2addr v1, v6

    const-wide/16 v6, 0x2

    .line 772
    div-long/2addr v1, v6

    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ssthresh:J

    cmp-long v3, v1, v6

    if-gez v3, :cond_1c

    .line 774
    iput-wide v6, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ssthresh:J

    .line 776
    :cond_1c
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ssthresh:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    .line 777
    iget-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    mul-long v1, v1, v3

    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    :cond_1d
    if-eqz v21, :cond_1f

    .line 781
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ssthresh:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1e

    .line 783
    iput-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ssthresh:J

    :cond_1e
    const-wide/16 v1, 0x1

    .line 785
    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    .line 786
    iget-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    iput-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    goto :goto_d

    :cond_1f
    const-wide/16 v1, 0x1

    .line 789
    :goto_d
    iget-wide v3, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_20

    .line 790
    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->cwnd:J

    .line 791
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->mss:J

    iput-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->incr:J

    :cond_20
    return-void
.end method

.method protected abstract output([BI)V
.end method

.method parse_ack(J)V
    .locals 7

    .line 384
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_una:J

    invoke-static {p1, p2, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_nxt:J

    invoke-static {p1, p2, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 389
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 390
    iget-wide v3, v2, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_1

    .line 391
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 394
    :cond_1
    iget-wide v3, v2, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->fastack:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->fastack:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method parse_data(Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;)V
    .locals 10

    .line 424
    iget-wide v0, p1, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    .line 427
    iget-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    iget-wide v4, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    if-gez v2, :cond_7

    iget-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    invoke-static {v0, v1, v2, v3}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    if-gez v2, :cond_0

    goto/16 :goto_5

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_3

    .line 436
    iget-object v6, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 437
    iget-wide v7, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    cmp-long v9, v7, v0

    if-nez v9, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 442
    :cond_1
    iget-wide v6, v6, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    invoke-static {v0, v1, v6, v7}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v2, -0x1

    :goto_2
    if-nez v0, :cond_5

    if-ne v2, v4, :cond_4

    .line 451
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 453
    :cond_4
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    add-int/2addr v2, v3

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 460
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 461
    iget-wide v1, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    iget-wide v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    cmp-long v6, v1, v3

    if-nez v6, :cond_6

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    cmp-long v6, v1, v3

    if-gez v6, :cond_6

    .line 462
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_nxt:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    if-lez v5, :cond_7

    .line 472
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v5, v0}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    :cond_7
    :goto_5
    return-void
.end method

.method parse_una(J)V
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    .line 404
    iget-wide v2, v2, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    invoke-static {p1, p2, v2, v3}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 412
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method shrink_buf()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;

    iget-wide v0, v0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_una:J

    goto :goto_0

    .line 378
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_nxt:J

    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->snd_una:J

    :goto_0
    return-void
.end method

.method update_ack(I)V
    .locals 12

    .line 353
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_srtt:J

    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v0

    if-nez v8, :cond_0

    int-to-long v0, p1

    .line 354
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_srtt:J

    .line 355
    div-int/lit8 p1, p1, 0x2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rttval:J

    goto :goto_0

    :cond_0
    int-to-long v6, p1

    sub-long v8, v6, v0

    long-to-int p1, v8

    if-gez p1, :cond_1

    neg-int p1, p1

    :cond_1
    const-wide/16 v8, 0x3

    .line 362
    iget-wide v10, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rttval:J

    mul-long v10, v10, v8

    int-to-long v8, p1

    add-long/2addr v10, v8

    div-long/2addr v10, v2

    iput-wide v10, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rttval:J

    const-wide/16 v8, 0x7

    mul-long v0, v0, v8

    add-long/2addr v0, v6

    const-wide/16 v6, 0x8

    .line 363
    div-long/2addr v0, v6

    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_srtt:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_2

    .line 365
    iput-wide v4, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_srtt:J

    .line 369
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_srtt:J

    iget-wide v6, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rttval:J

    mul-long v6, v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_imax_(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 370
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_minrto:J

    int-to-long v2, p1

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->_ibound_(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rx_rto:J

    return-void
.end method

.method wnd_unused()I
    .locals 5

    .line 596
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->rcv_wnd:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v0, v2

    .line 597
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
