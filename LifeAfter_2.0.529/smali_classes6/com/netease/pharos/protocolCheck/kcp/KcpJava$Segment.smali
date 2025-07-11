.class Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;
.super Ljava/lang/Object;
.source "KcpJava.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/protocolCheck/kcp/KcpJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation


# instance fields
.field protected cmd:J

.field protected conv:J

.field protected data:[B

.field protected fastack:J

.field protected frg:J

.field protected resendts:J

.field protected rto:J

.field protected sn:J

.field final synthetic this$0:Lcom/netease/pharos/protocolCheck/kcp/KcpJava;

.field protected ts:J

.field protected una:J

.field protected wnd:J

.field protected xmit:J


# direct methods
.method protected constructor <init>(Lcom/netease/pharos/protocolCheck/kcp/KcpJava;I)V
    .locals 2

    .line 142
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->this$0:Lcom/netease/pharos/protocolCheck/kcp/KcpJava;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->conv:J

    .line 130
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->cmd:J

    .line 131
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->frg:J

    .line 132
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->wnd:J

    .line 133
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->ts:J

    .line 134
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    .line 135
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->una:J

    .line 136
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->resendts:J

    .line 137
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->rto:J

    .line 138
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->fastack:J

    .line 139
    iput-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->xmit:J

    .line 143
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    return-void
.end method


# virtual methods
.method protected encode([BI)I
    .locals 3

    .line 150
    iget-wide v0, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->conv:J

    invoke-static {p1, p2, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    add-int/lit8 v0, p2, 0x4

    .line 152
    iget-wide v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->cmd:J

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-static {p1, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_encode8u([BIB)V

    add-int/lit8 v0, v0, 0x1

    .line 154
    iget-wide v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->frg:J

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-static {p1, v0, v1}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_encode8u([BIB)V

    add-int/lit8 v0, v0, 0x1

    .line 156
    iget-wide v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->wnd:J

    long-to-int v2, v1

    invoke-static {p1, v0, v2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_encode16u([BII)V

    add-int/lit8 v0, v0, 0x2

    .line 158
    iget-wide v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->ts:J

    invoke-static {p1, v0, v1, v2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    add-int/lit8 v0, v0, 0x4

    .line 160
    iget-wide v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->sn:J

    invoke-static {p1, v0, v1, v2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    add-int/lit8 v0, v0, 0x4

    .line 162
    iget-wide v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->una:J

    invoke-static {p1, v0, v1, v2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    add-int/lit8 v0, v0, 0x4

    .line 164
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJava$Segment;->data:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {p1, v0, v1, v2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method
