.class public final Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;
    }
.end annotation


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public intercept(Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;)Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->httpStream()Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->connection()Lcom/netease/ntunisdk/okhttp3/Connection;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->call()Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/ntunisdk/okhttp3/EventListener;->requestHeadersStart(Lcom/netease/ntunisdk/okhttp3/Call;)V

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lcom/netease/ntunisdk/okhttp3/Request;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->call()Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/netease/ntunisdk/okhttp3/EventListener;->requestHeadersEnd(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Request;)V

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->body()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    invoke-virtual {v3, v6}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;->flushRequest()V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->call()Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/ntunisdk/okhttp3/EventListener;->responseHeadersStart(Lcom/netease/ntunisdk/okhttp3/Call;)V

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->call()Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/netease/ntunisdk/okhttp3/EventListener;->requestBodyStart(Lcom/netease/ntunisdk/okhttp3/Call;)V

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->body()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    new-instance v2, Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;

    invoke-interface {v0, v3, v8, v9}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;->createRequestBody(Lcom/netease/ntunisdk/okhttp3/Request;J)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;)V

    invoke-static {v2}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v6

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->body()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->writeTo(Lcom/netease/ntunisdk/okio/BufferedSink;)V

    invoke-interface {v6}, Lcom/netease/ntunisdk/okio/BufferedSink;->close()V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->call()Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object v8

    iget-wide v9, v2, Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    invoke-virtual {v6, v8, v9, v10}, Lcom/netease/ntunisdk/okhttp3/EventListener;->requestBodyEnd(Lcom/netease/ntunisdk/okhttp3/Call;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;->finishRequest()V

    const/4 v2, 0x0

    if-nez v7, :cond_3

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->call()Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/ntunisdk/okhttp3/EventListener;->responseHeadersStart(Lcom/netease/ntunisdk/okhttp3/Call;)V

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v7

    :cond_3
    invoke-virtual {v7, v3}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->request(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;->handshake()Lcom/netease/ntunisdk/okhttp3/Handshake;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->handshake(Lcom/netease/ntunisdk/okhttp3/Handshake;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->request(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;->handshake()Lcom/netease/ntunisdk/okhttp3/Handshake;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->handshake(Lcom/netease/ntunisdk/okhttp3/Handshake;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v7

    :cond_4
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->call()Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lcom/netease/ntunisdk/okhttp3/EventListener;->responseHeadersEnd(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Response;)V

    iget-boolean p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x65

    if-ne v7, p1, :cond_5

    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/internal/Util;->EMPTY_RESPONSE:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    invoke-interface {v0, v6}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;->openResponseBody(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body(Lcom/netease/ntunisdk/okhttp3/ResponseBody;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :cond_7
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_8

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_a

    :cond_9
    return-object p1

    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
