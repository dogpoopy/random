.class final Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lcom/netease/ntunisdk/okio/Sink;

.field private cacheOut:Lcom/netease/ntunisdk/okio/Sink;

.field done:Z

.field private final editor:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/Cache;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/Cache;Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->this$0:Lcom/netease/ntunisdk/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->editor:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->cacheOut:Lcom/netease/ntunisdk/okio/Sink;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->cacheOut:Lcom/netease/ntunisdk/okio/Sink;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;-><init>(Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okhttp3/Cache;Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->body:Lcom/netease/ntunisdk/okio/Sink;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->this$0:Lcom/netease/ntunisdk/okhttp3/Cache;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->done:Z

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->this$0:Lcom/netease/ntunisdk/okhttp3/Cache;

    iget v3, v2, Lcom/netease/ntunisdk/okhttp3/Cache;->writeAbortCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/netease/ntunisdk/okhttp3/Cache;->writeAbortCount:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->cacheOut:Lcom/netease/ntunisdk/okio/Sink;

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->editor:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public body()Lcom/netease/ntunisdk/okio/Sink;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->body:Lcom/netease/ntunisdk/okio/Sink;

    return-object v0
.end method
