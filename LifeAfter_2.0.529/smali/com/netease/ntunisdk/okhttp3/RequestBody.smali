.class public abstract Lcom/netease/ntunisdk/okhttp3/RequestBody;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/netease/ntunisdk/okhttp3/MediaType;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/netease/ntunisdk/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/okhttp3/RequestBody$1;-><init>(Lcom/netease/ntunisdk/okhttp3/MediaType;Lcom/netease/ntunisdk/okio/ByteString;)V

    return-object v0
.end method

.method public static create(Lcom/netease/ntunisdk/okhttp3/MediaType;Ljava/io/File;)Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lcom/netease/ntunisdk/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/RequestBody$3;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/okhttp3/RequestBody$3;-><init>(Lcom/netease/ntunisdk/okhttp3/MediaType;Ljava/io/File;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lcom/netease/ntunisdk/okhttp3/MediaType;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .locals 2
    .param p0    # Lcom/netease/ntunisdk/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object p0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;[B)Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/netease/ntunisdk/okhttp3/MediaType;[B)Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .locals 2
    .param p0    # Lcom/netease/ntunisdk/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;[BII)Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/netease/ntunisdk/okhttp3/MediaType;[BII)Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .locals 7
    .param p0    # Lcom/netease/ntunisdk/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/netease/ntunisdk/okhttp3/RequestBody$2;-><init>(Lcom/netease/ntunisdk/okhttp3/MediaType;I[BI)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lcom/netease/ntunisdk/okio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
