.class Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lcom/netease/ntunisdk/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lcom/netease/ntunisdk/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;Lcom/netease/ntunisdk/okio/BufferedSource;Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;Lcom/netease/ntunisdk/okio/BufferedSink;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/netease/ntunisdk/okio/BufferedSource;

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->discard(Lcom/netease/ntunisdk/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;->abort()V

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/netease/ntunisdk/okio/BufferedSource;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSource;->close()V

    return-void
.end method

.method public read(Lcom/netease/ntunisdk/okio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/netease/ntunisdk/okio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/netease/ntunisdk/okio/BufferedSource;->read(Lcom/netease/ntunisdk/okio/Buffer;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    iget-boolean p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okio/BufferedSink;->close()V

    :cond_0
    return-wide v1

    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->buffer()Lcom/netease/ntunisdk/okio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/okio/Buffer;->copyTo(Lcom/netease/ntunisdk/okio/Buffer;JJ)Lcom/netease/ntunisdk/okio/Buffer;

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okio/BufferedSink;->emitCompleteSegments()Lcom/netease/ntunisdk/okio/BufferedSink;

    return-wide p2

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p2, :cond_2

    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;

    invoke-interface {p2}, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;->abort()V

    :cond_2
    throw p1
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/netease/ntunisdk/okio/BufferedSource;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/BufferedSource;->timeout()Lcom/netease/ntunisdk/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
