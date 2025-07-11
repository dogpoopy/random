.class Lcom/netease/ntunisdk/services/MediaShareUtil$2;
.super Lokhttp3/RequestBody;
.source "MediaShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/services/MediaShareUtil;->append2(Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$index:I

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iput-object p2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;->val$mimeType:Ljava/lang/String;

    iput p3, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;->val$index:I

    iput-object p4, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;->val$mimeType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;->val$index:I

    int-to-long v0, v0

    const-wide/32 v2, 0x400000

    mul-long v0, v0, v2

    .line 141
    iget-object v4, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;->val$file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 142
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 143
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;->val$file:Ljava/io/File;

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x2004

    new-array v0, v0, [B

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v1, v2, v5

    if-lez v1, :cond_0

    .line 148
    array-length v1, v0

    int-to-long v5, v1

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v1, v5

    const/4 v5, 0x0

    .line 149
    invoke-virtual {v4, v0, v5, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    int-to-long v6, v1

    long-to-int v1, v6

    .line 150
    invoke-interface {p1, v0, v5, v1}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    sub-long/2addr v2, v6

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
