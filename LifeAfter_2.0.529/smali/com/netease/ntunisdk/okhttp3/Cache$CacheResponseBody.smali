.class Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;
.super Lcom/netease/ntunisdk/okhttp3/ResponseBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lcom/netease/ntunisdk/okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final snapshot:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;->snapshot:Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p2

    new-instance p3, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody$1;-><init>(Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;Lcom/netease/ntunisdk/okio/Source;Lcom/netease/ntunisdk/okhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {p3}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;->bodySource:Lcom/netease/ntunisdk/okio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lcom/netease/ntunisdk/okio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Cache$CacheResponseBody;->bodySource:Lcom/netease/ntunisdk/okio/BufferedSource;

    return-object v0
.end method
