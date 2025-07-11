.class Lcom/netease/ntunisdk/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/netease/ntunisdk/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/netease/ntunisdk/okio/Timeout;)Lcom/netease/ntunisdk/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$out:Ljava/io/OutputStream;

.field private final synthetic val$timeout:Lcom/netease/ntunisdk/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okio/Timeout;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/Okio$1;->val$timeout:Lcom/netease/ntunisdk/okio/Timeout;

    iput-object p2, p0, Lcom/netease/ntunisdk/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Okio$1;->val$timeout:Lcom/netease/ntunisdk/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/netease/ntunisdk/okio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-wide v0, p1, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/netease/ntunisdk/okio/Util;->checkOffsetAndCount(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Okio$1;->val$timeout:Lcom/netease/ntunisdk/okio/Timeout;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Timeout;->throwIfReached()V

    .line 79
    iget-object v0, p1, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 80
    iget v1, v0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v2, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 81
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v4, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    iget v1, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    int-to-long v1, v2

    sub-long/2addr p2, v1

    .line 85
    iget-wide v3, p1, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    .line 87
    iget v1, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iget v2, v0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Segment;->pop()Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    .line 89
    invoke-static {v0}, Lcom/netease/ntunisdk/okio/SegmentPool;->recycle(Lcom/netease/ntunisdk/okio/Segment;)V

    goto :goto_0
.end method
