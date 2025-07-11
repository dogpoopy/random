.class final Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Lcom/netease/ntunisdk/okio/ForwardingTimeout;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/ntunisdk/okio/ForwardingTimeout;

    iget-object p1, p1, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okio/BufferedSink;->timeout()Lcom/netease/ntunisdk/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/okio/ForwardingTimeout;-><init>(Lcom/netease/ntunisdk/okio/Timeout;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lcom/netease/ntunisdk/okio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lcom/netease/ntunisdk/okio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lcom/netease/ntunisdk/okio/ForwardingTimeout;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lcom/netease/ntunisdk/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lcom/netease/ntunisdk/okio/Buffer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0, p2, p3}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lcom/netease/ntunisdk/okio/BufferedSink;

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/okio/BufferedSink;->write(Lcom/netease/ntunisdk/okio/Buffer;J)V

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;

    iget-object p1, p1, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
