.class public final Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final HEADER_LIMIT:I = 0x40000

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

.field private headerLimit:J

.field final sink:Lcom/netease/ntunisdk/okio/BufferedSink;

.field final source:Lcom/netease/ntunisdk/okio/BufferedSource;

.field state:I

.field final streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;Lcom/netease/ntunisdk/okio/BufferedSource;Lcom/netease/ntunisdk/okio/BufferedSink;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->source:Lcom/netease/ntunisdk/okio/BufferedSource;

    iput-object p4, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    return-void
.end method

.method private readHeaderLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->source:Lcom/netease/ntunisdk/okio/BufferedSource;

    iget-wide v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/okio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;->cancel()V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/netease/ntunisdk/okhttp3/Request;J)Lcom/netease/ntunisdk/okio/Sink;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->newChunkedSink()Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method detachTimeout(Lcom/netease/ntunisdk/okio/ForwardingTimeout;)V
    .locals 2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ForwardingTimeout;->delegate()Lcom/netease/ntunisdk/okio/Timeout;

    move-result-object v0

    sget-object v1, Lcom/netease/ntunisdk/okio/Timeout;->NONE:Lcom/netease/ntunisdk/okio/Timeout;

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/okio/ForwardingTimeout;->setDelegate(Lcom/netease/ntunisdk/okio/Timeout;)Lcom/netease/ntunisdk/okio/ForwardingTimeout;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Timeout;->clearDeadline()Lcom/netease/ntunisdk/okio/Timeout;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Timeout;->clearTimeout()Lcom/netease/ntunisdk/okio/Timeout;

    return-void
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->flush()V

    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->flush()V

    return-void
.end method

.method public isClosed()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newChunkedSink()Lcom/netease/ntunisdk/okio/Sink;
    .locals 3

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChunkedSource(Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Lcom/netease/ntunisdk/okio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;Lcom/netease/ntunisdk/okhttp3/HttpUrl;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSink(J)Lcom/netease/ntunisdk/okio/Sink;
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSource(J)Lcom/netease/ntunisdk/okio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newUnknownLengthSource()Lcom/netease/ntunisdk/okio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openResponseBody(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/ResponseBody;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Lcom/netease/ntunisdk/okhttp3/EventListener;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, v1, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->call:Lcom/netease/ntunisdk/okhttp3/Call;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/EventListener;->responseBodyStart(Lcom/netease/ntunisdk/okhttp3/Call;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/netease/ntunisdk/okhttp3/Response;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p1

    new-instance v3, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLcom/netease/ntunisdk/okio/BufferedSource;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->newChunkedSource(Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p1

    new-instance v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLcom/netease/ntunisdk/okio/BufferedSource;)V

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/netease/ntunisdk/okhttp3/Response;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4, v5}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p1

    new-instance v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLcom/netease/ntunisdk/okio/BufferedSource;)V

    return-object v1

    :cond_2
    new-instance p1, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lcom/netease/ntunisdk/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLcom/netease/ntunisdk/okio/BufferedSource;)V

    return-object p1
.end method

.method public readHeaders()Lcom/netease/ntunisdk/okhttp3/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->instance:Lcom/netease/ntunisdk/okhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->addLenient(Lcom/netease/ntunisdk/okhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public readResponseHeaders(Z)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/internal/http/StatusLine;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    invoke-direct {v2}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;-><init>()V

    iget-object v3, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/StatusLine;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->protocol(Lcom/netease/ntunisdk/okhttp3/Protocol;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    iget v3, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code(I)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->readHeaders()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers(Lcom/netease/ntunisdk/okhttp3/Headers;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/StatusLine;->code:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget p1, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/StatusLine;->code:I

    if-ne p1, v3, :cond_3

    iput v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public writeRequest(Lcom/netease/ntunisdk/okhttp3/Headers;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0, p2}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Headers;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    const/4 p1, 0x1

    iput p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public writeRequestHeaders(Lcom/netease/ntunisdk/okhttp3/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;->route()Lcom/netease/ntunisdk/okhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/RequestLine;->get(Lcom/netease/ntunisdk/okhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/okhttp3/internal/http1/Http1Codec;->writeRequest(Lcom/netease/ntunisdk/okhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method
