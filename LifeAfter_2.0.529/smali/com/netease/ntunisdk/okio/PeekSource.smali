.class final Lcom/netease/ntunisdk/okio/PeekSource;
.super Ljava/lang/Object;
.source "PeekSource.java"

# interfaces
.implements Lcom/netease/ntunisdk/okio/Source;


# instance fields
.field private final buffer:Lcom/netease/ntunisdk/okio/Buffer;

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lcom/netease/ntunisdk/okio/Segment;

.field private pos:J

.field private final upstream:Lcom/netease/ntunisdk/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okio/BufferedSource;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->upstream:Lcom/netease/ntunisdk/okio/BufferedSource;

    .line 41
    invoke-interface {p1}, Lcom/netease/ntunisdk/okio/BufferedSource;->buffer()Lcom/netease/ntunisdk/okio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    .line 42
    iget-object p1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object p1, p1, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    iput-object p1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->expectedSegment:Lcom/netease/ntunisdk/okio/Segment;

    .line 43
    iget-object p1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->expectedSegment:Lcom/netease/ntunisdk/okio/Segment;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->expectedPos:I

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

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->closed:Z

    return-void
.end method

.method public read(Lcom/netease/ntunisdk/okio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->closed:Z

    if-nez v0, :cond_4

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->expectedSegment:Lcom/netease/ntunisdk/okio/Segment;

    if-eqz v0, :cond_1

    .line 52
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v1, v1, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->expectedPos:I

    iget-object v1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v1, v1, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    iget v1, v1, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peek source is invalid because upstream source was used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->upstream:Lcom/netease/ntunisdk/okio/BufferedSource;

    iget-wide v1, p0, Lcom/netease/ntunisdk/okio/PeekSource;->pos:J

    add-long/2addr v1, p2

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/okio/BufferedSource;->request(J)Z

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->expectedSegment:Lcom/netease/ntunisdk/okio/Segment;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v0, v0, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v0, v0, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    iput-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->expectedSegment:Lcom/netease/ntunisdk/okio/Segment;

    .line 62
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v0, v0, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    iget v0, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iput v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->expectedPos:I

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v0, v0, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    iget-wide v2, p0, Lcom/netease/ntunisdk/okio/PeekSource;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_3

    const-wide/16 p1, -0x1

    return-wide p1

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/PeekSource;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v4, p0, Lcom/netease/ntunisdk/okio/PeekSource;->pos:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/okio/Buffer;->copyTo(Lcom/netease/ntunisdk/okio/Buffer;JJ)Lcom/netease/ntunisdk/okio/Buffer;

    .line 69
    iget-wide v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->pos:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->pos:J

    return-wide p2

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/PeekSource;->upstream:Lcom/netease/ntunisdk/okio/BufferedSource;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSource;->timeout()Lcom/netease/ntunisdk/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
