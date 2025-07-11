.class Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody$1;
.super Lcom/netease/ntunisdk/okio/ForwardingSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;Lcom/netease/ntunisdk/okio/Source;Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody$1;->this$0:Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/okio/ForwardingSource;-><init>(Lcom/netease/ntunisdk/okio/Source;)V

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

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    invoke-super {p0}, Lcom/netease/ntunisdk/okio/ForwardingSource;->close()V

    return-void
.end method
