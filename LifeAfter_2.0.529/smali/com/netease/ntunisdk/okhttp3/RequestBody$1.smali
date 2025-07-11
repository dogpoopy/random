.class Lcom/netease/ntunisdk/okhttp3/RequestBody$1;
.super Lcom/netease/ntunisdk/okhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/RequestBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/netease/ntunisdk/okio/ByteString;

.field final synthetic val$contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/MediaType;Lcom/netease/ntunisdk/okio/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/RequestBody$1;->val$contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/RequestBody$1;->val$content:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-direct {p0}, Lcom/netease/ntunisdk/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RequestBody$1;->val$content:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RequestBody$1;->val$contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/netease/ntunisdk/okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RequestBody$1;->val$content:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/okio/BufferedSink;->write(Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/BufferedSink;

    return-void
.end method
