.class Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lcom/netease/ntunisdk/okio/ForwardingSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field bytesRead:J

.field completed:Z

.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec;Lcom/netease/ntunisdk/okio/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec;

    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/okio/ForwardingSource;-><init>(Lcom/netease/ntunisdk/okio/Source;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    return-void
.end method

.method private endOfInput(Ljava/io/IOException;)V
    .locals 7

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec;

    iget-object v1, v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec;

    iget-wide v4, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

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

    invoke-super {p0}, Lcom/netease/ntunisdk/okio/ForwardingSource;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    return-void
.end method

.method public read(Lcom/netease/ntunisdk/okio/Buffer;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->delegate()Lcom/netease/ntunisdk/okio/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/okio/Source;->read(Lcom/netease/ntunisdk/okio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    iget-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    throw p1
.end method
