.class public final Lcom/netease/ntunisdk/okio/HashingSink;
.super Lcom/netease/ntunisdk/okio/ForwardingSink;
.source "HashingSink.java"


# instance fields
.field private final mac:Ljavax/crypto/Mac;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final messageDigest:Ljava/security/MessageDigest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okio/ByteString;Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/okio/ForwardingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;)V

    .line 97
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    .line 98
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 101
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lcom/netease/ntunisdk/okio/Sink;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/okio/ForwardingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;)V

    .line 87
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/HashingSink;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 90
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static hmacSha1(Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/HashingSink;
    .locals 2

    .line 71
    new-instance v0, Lcom/netease/ntunisdk/okio/HashingSink;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/ntunisdk/okio/HashingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/HashingSink;
    .locals 2

    .line 76
    new-instance v0, Lcom/netease/ntunisdk/okio/HashingSink;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/ntunisdk/okio/HashingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512(Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/HashingSink;
    .locals 2

    .line 81
    new-instance v0, Lcom/netease/ntunisdk/okio/HashingSink;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/ntunisdk/okio/HashingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;Lcom/netease/ntunisdk/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/HashingSink;
    .locals 2

    .line 51
    new-instance v0, Lcom/netease/ntunisdk/okio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/okio/HashingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/HashingSink;
    .locals 2

    .line 56
    new-instance v0, Lcom/netease/ntunisdk/okio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/okio/HashingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/HashingSink;
    .locals 2

    .line 61
    new-instance v0, Lcom/netease/ntunisdk/okio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/okio/HashingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha512(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/HashingSink;
    .locals 2

    .line 66
    new-instance v0, Lcom/netease/ntunisdk/okio/HashingSink;

    const-string v1, "SHA-512"

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/okio/HashingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final hash()Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 134
    :goto_0
    invoke-static {v0}, Lcom/netease/ntunisdk/okio/ByteString;->of([B)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/netease/ntunisdk/okio/Buffer;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-wide v0, p1, Lcom/netease/ntunisdk/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/netease/ntunisdk/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 112
    iget-object v0, p1, Lcom/netease/ntunisdk/okio/Buffer;->head:Lcom/netease/ntunisdk/okio/Segment;

    const-wide/16 v1, 0x0

    :goto_0
    cmp-long v3, v1, p2

    if-ltz v3, :cond_0

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/netease/ntunisdk/okio/ForwardingSink;->write(Lcom/netease/ntunisdk/okio/Buffer;J)V

    return-void

    :cond_0
    sub-long v3, p2, v1

    .line 113
    iget v5, v0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v6, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 114
    iget-object v3, p0, Lcom/netease/ntunisdk/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v3, :cond_1

    .line 115
    iget-object v5, v0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v6, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    invoke-virtual {v3, v5, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/netease/ntunisdk/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    iget-object v5, v0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v6, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    invoke-virtual {v3, v5, v6, v4}, Ljavax/crypto/Mac;->update([BII)V

    :goto_1
    int-to-long v3, v4

    add-long/2addr v1, v3

    .line 112
    iget-object v0, v0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    goto :goto_0
.end method
