.class Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;
.super Lcom/netease/ntunisdk/okio/ForwardingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;-><init>(Lcom/netease/ntunisdk/okhttp3/Cache;Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lcom/netease/ntunisdk/okhttp3/Cache;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okhttp3/Cache;Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;->val$this$0:Lcom/netease/ntunisdk/okhttp3/Cache;

    iput-object p4, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/okio/ForwardingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->this$0:Lcom/netease/ntunisdk/okhttp3/Cache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;

    iget-boolean v1, v1, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->done:Z

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;

    iget-object v1, v1, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl;->this$0:Lcom/netease/ntunisdk/okhttp3/Cache;

    iget v3, v1, Lcom/netease/ntunisdk/okhttp3/Cache;->writeSuccessCount:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/netease/ntunisdk/okhttp3/Cache;->writeSuccessCount:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/netease/ntunisdk/okio/ForwardingSink;->close()V

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
