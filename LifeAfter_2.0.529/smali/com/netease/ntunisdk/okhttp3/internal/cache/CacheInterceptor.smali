.class public final Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Interceptor;


# instance fields
.field final cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    return-void
.end method

.method private cacheWritingResponse(Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;->body()Lcom/netease/ntunisdk/okio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->source()Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object v1

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;-><init>(Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;Lcom/netease/ntunisdk/okio/BufferedSource;Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;Lcom/netease/ntunisdk/okio/BufferedSink;)V

    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p2

    new-instance v3, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;

    invoke-static {v2}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLcom/netease/ntunisdk/okio/BufferedSource;)V

    invoke-virtual {p2, v3}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body(Lcom/netease/ntunisdk/okhttp3/ResponseBody;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private static combine(Lcom/netease/ntunisdk/okhttp3/Headers;Lcom/netease/ntunisdk/okhttp3/Headers;)Lcom/netease/ntunisdk/okhttp3/Headers;
    .locals 7

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lcom/netease/ntunisdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->instance:Lcom/netease/ntunisdk/okhttp3/internal/Internal;

    invoke-virtual {v6, v0, v4, v5}, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->addLenient(Lcom/netease/ntunisdk/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Headers;->size()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->instance:Lcom/netease/ntunisdk/okhttp3/internal/Internal;

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->addLenient(Lcom/netease/ntunisdk/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method static isContentSpecificHeader(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static stripBody(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body(Lcom/netease/ntunisdk/okhttp3/ResponseBody;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public intercept(Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;)Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;->get(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLcom/netease/ntunisdk/okhttp3/Request;Lcom/netease/ntunisdk/okhttp3/Response;)V

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy$Factory;->get()Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;

    move-result-object v1

    iget-object v2, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lcom/netease/ntunisdk/okhttp3/Request;

    iget-object v3, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iget-object v4, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;->trackResponse(Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;-><init>()V

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->request(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/Protocol;->HTTP_1_1:Lcom/netease/ntunisdk/okhttp3/Protocol;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->protocol(Lcom/netease/ntunisdk/okhttp3/Protocol;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code(I)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/internal/Util;->EMPTY_RESPONSE:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body(Lcom/netease/ntunisdk/okhttp3/ResponseBody;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    invoke-static {v3}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->cacheResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;->proceed(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->combine(Lcom/netease/ntunisdk/okhttp3/Headers;Lcom/netease/ntunisdk/okhttp3/Headers;)Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers(Lcom/netease/ntunisdk/okhttp3/Headers;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->cacheResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->networkResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->close()V

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    invoke-interface {p1, v3, v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;->update(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/Response;)V

    return-object v0

    :cond_6
    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_7
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->cacheResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->networkResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/netease/ntunisdk/okhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;->isCacheable(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;->put(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;->remove(Lcom/netease/ntunisdk/okhttp3/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    throw p1
.end method
