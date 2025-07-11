.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 1622
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1623
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_0

    .line 1624
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1625
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .local v1, "s":Lokio/Segment;
    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_0

    .line 1626
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1625
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    move-object v1, v2

    goto :goto_0

    .line 1629
    .end local v1    # "s":Lokio/Segment;
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1630
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    .line 1652
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 1653
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1654
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_0

    .line 1655
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 1656
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .local v1, "s":Lokio/Segment;
    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_0

    .line 1657
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 1656
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    move-object v1, v2

    goto :goto_0

    .line 1660
    .end local v1    # "s":Lokio/Segment;
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1663
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 1664
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1661
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 1662
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .locals 5
    .param p1, "segment"    # Lokio/Segment;
    .param p2, "segmentPos"    # I
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "bytesLimit"    # I

    .line 1553
    iget v0, p1, Lokio/Segment;->limit:I

    .line 1554
    .local v0, "segmentLimit":I
    iget-object v1, p1, Lokio/Segment;->data:[B

    .line 1556
    .local v1, "data":[B
    move v2, p4

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_2

    .line 1557
    if-ne p2, v0, :cond_0

    .line 1558
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 1559
    iget-object v1, p1, Lokio/Segment;->data:[B

    .line 1560
    iget p2, p1, Lokio/Segment;->pos:I

    .line 1561
    iget v0, p1, Lokio/Segment;->limit:I

    .line 1564
    :cond_0
    aget-byte v3, v1, p2

    invoke-virtual {p3, v2}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1565
    const/4 v3, 0x0

    return v3

    .line 1568
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 1569
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1572
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    if-eqz p1, :cond_4

    .line 247
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    return-void

    .line 248
    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 249
    .local v0, "tail":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 250
    .local v2, "maxToCopy":I
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 251
    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 252
    if-eqz p4, :cond_2

    return-void

    .line 253
    :cond_2
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 255
    :cond_3
    iget v3, v0, Lokio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v0, Lokio/Segment;->limit:I

    .line 256
    iget-wide v3, p0, Lokio/Buffer;->size:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 257
    int-to-long v3, v1

    sub-long/2addr p2, v3

    .line 258
    .end local v0    # "tail":Lokio/Segment;
    .end local v1    # "bytesRead":I
    .end local v2    # "maxToCopy":I
    goto :goto_0

    .line 246
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 0

    .line 71
    return-object p0
.end method

.method public clear()V
    .locals 2

    .line 840
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    nop

    .line 844
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 6

    .line 1724
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1725
    .local v0, "result":Lokio/Buffer;
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 1727
    :cond_0
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1728
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1729
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .local v1, "s":Lokio/Segment;
    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_1

    .line 1730
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1729
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1732
    .end local v1    # "s":Lokio/Segment;
    :cond_1
    iget-wide v1, p0, Lokio/Buffer;->size:J

    iput-wide v1, v0, Lokio/Buffer;->size:J

    .line 1733
    return-object v0
.end method

.method public close()V
    .locals 0

    .line 1583
    return-void
.end method

.method public completeSegmentByteCount()J
    .locals 5

    .line 267
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 268
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 271
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 272
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_1

    .line 273
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v0, v3

    .line 276
    :cond_1
    return-wide v0
.end method

.method public copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    if-eqz p1, :cond_3

    .line 151
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 152
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-object p0

    .line 155
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 156
    .local v2, "s":Lokio/Segment;
    :goto_0
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_1

    .line 157
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 156
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 161
    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_2

    .line 162
    iget v3, v2, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int v4, v3

    .line 163
    .local v4, "pos":I
    iget v3, v2, Lokio/Segment;->limit:I

    sub-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {v5, v6, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    .line 164
    .local v3, "toCopy":I
    iget-object v5, v2, Lokio/Segment;->data:[B

    invoke-virtual {p1, v5, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    int-to-long v5, v3

    sub-long/2addr p4, v5

    .line 166
    const-wide/16 p2, 0x0

    .line 161
    .end local v3    # "toCopy":I
    .end local v4    # "pos":I
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 169
    :cond_2
    return-object p0

    .line 150
    .end local v2    # "s":Lokio/Segment;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 6
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 174
    if-eqz p1, :cond_4

    .line 175
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 176
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-object p0

    .line 178
    :cond_0
    iget-wide v2, p1, Lokio/Buffer;->size:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lokio/Buffer;->size:J

    .line 181
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 182
    .local v2, "s":Lokio/Segment;
    :goto_0
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_1

    .line 183
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 182
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 187
    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 188
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    .line 189
    .local v3, "copy":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int v5, v4

    iput v5, v3, Lokio/Segment;->pos:I

    .line 190
    iget v4, v3, Lokio/Segment;->pos:I

    long-to-int v5, p4

    add-int/2addr v4, v5

    iget v5, v3, Lokio/Segment;->limit:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lokio/Segment;->limit:I

    .line 191
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_2

    .line 192
    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 194
    :cond_2
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v4, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 196
    :goto_2
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr p4, v4

    .line 197
    const-wide/16 p2, 0x0

    .line 187
    .end local v3    # "copy":Lokio/Segment;
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 200
    :cond_3
    return-object p0

    .line 174
    .end local v2    # "s":Lokio/Segment;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public emit()Lokio/BufferedSink;
    .locals 0

    .line 101
    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0

    .line 97
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 17
    .param p1, "o"    # Ljava/lang/Object;

    .line 1669
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1670
    :cond_0
    instance-of v3, v1, Lokio/Buffer;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 1671
    :cond_1
    move-object v3, v1

    check-cast v3, Lokio/Buffer;

    .line 1672
    .local v3, "that":Lokio/Buffer;
    iget-wide v5, v0, Lokio/Buffer;->size:J

    iget-wide v7, v3, Lokio/Buffer;->size:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    return v4

    .line 1673
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    return v2

    .line 1675
    :cond_3
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1676
    .local v5, "sa":Lokio/Segment;
    iget-object v6, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 1677
    .local v6, "sb":Lokio/Segment;
    iget v7, v5, Lokio/Segment;->pos:I

    .line 1678
    .local v7, "posA":I
    iget v8, v6, Lokio/Segment;->pos:I

    .line 1680
    .local v8, "posB":I
    const-wide/16 v9, 0x0

    .local v9, "pos":J
    :goto_0
    iget-wide v11, v0, Lokio/Buffer;->size:J

    cmp-long v13, v9, v11

    if-gez v13, :cond_8

    .line 1681
    iget v11, v5, Lokio/Segment;->limit:I

    sub-int/2addr v11, v7

    iget v12, v6, Lokio/Segment;->limit:I

    sub-int/2addr v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    .line 1683
    .local v11, "count":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    int-to-long v14, v13

    cmp-long v16, v14, v11

    if-gez v16, :cond_5

    .line 1684
    iget-object v14, v5, Lokio/Segment;->data:[B

    add-int/lit8 v15, v7, 0x1

    .end local v7    # "posA":I
    .local v15, "posA":I
    aget-byte v7, v14, v7

    iget-object v14, v6, Lokio/Segment;->data:[B

    add-int/lit8 v16, v8, 0x1

    .end local v8    # "posB":I
    .local v16, "posB":I
    aget-byte v8, v14, v8

    if-eq v7, v8, :cond_4

    return v4

    .line 1683
    :cond_4
    add-int/lit8 v13, v13, 0x1

    move v7, v15

    move/from16 v8, v16

    goto :goto_1

    .line 1687
    .end local v13    # "i":I
    .end local v15    # "posA":I
    .end local v16    # "posB":I
    .restart local v7    # "posA":I
    .restart local v8    # "posB":I
    :cond_5
    iget v13, v5, Lokio/Segment;->limit:I

    if-ne v7, v13, :cond_6

    .line 1688
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 1689
    iget v7, v5, Lokio/Segment;->pos:I

    .line 1692
    :cond_6
    iget v13, v6, Lokio/Segment;->limit:I

    if-ne v8, v13, :cond_7

    .line 1693
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 1694
    iget v8, v6, Lokio/Segment;->pos:I

    .line 1680
    :cond_7
    add-long/2addr v9, v11

    goto :goto_0

    .line 1698
    .end local v9    # "pos":J
    .end local v11    # "count":J
    :cond_8
    return v2
.end method

.method public exhausted()Z
    .locals 5

    .line 105
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    .line 1576
    return-void
.end method

.method public getByte(J)B
    .locals 6
    .param p1, "pos"    # J

    .line 302
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 303
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v2, v0, p1

    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 304
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 305
    .local v0, "s":Lokio/Segment;
    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 306
    .local v1, "segmentByteCount":I
    int-to-long v2, v1

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    return v2

    .line 307
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 304
    .end local v1    # "segmentByteCount":I
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 310
    .end local v0    # "s":Lokio/Segment;
    :cond_1
    sub-long/2addr p1, v0

    .line 311
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 312
    .restart local v0    # "s":Lokio/Segment;
    :goto_1
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 313
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    long-to-int v3, p1

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    return v1

    .line 311
    :cond_2
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .line 1702
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1703
    .local v0, "s":Lokio/Segment;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1704
    :cond_0
    const/4 v1, 0x1

    .line 1706
    .local v1, "result":I
    :goto_0
    iget v2, v0, Lokio/Segment;->pos:I

    .local v2, "pos":I
    iget v3, v0, Lokio/Segment;->limit:I

    .local v3, "limit":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1707
    mul-int/lit8 v4, v1, 0x1f

    iget-object v5, v0, Lokio/Segment;->data:[B

    aget-byte v5, v5, v2

    add-int v1, v4, v5

    .line 1706
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1709
    .end local v2    # "pos":I
    .end local v3    # "limit":I
    :cond_1
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1710
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_2

    .line 1711
    return v1

    .line 1710
    :cond_2
    goto :goto_0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    .line 1637
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    .line 1642
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    .line 1647
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6
    .param p1, "b"    # B

    .line 1323
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    .line 1331
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 10
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    .line 1335
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_8

    cmp-long v0, p4, p2

    if-ltz v0, :cond_8

    .line 1340
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    iget-wide p4, p0, Lokio/Buffer;->size:J

    .line 1341
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p2, p4

    if-nez v2, :cond_1

    return-wide v0

    .line 1349
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1350
    .local v2, "s":Lokio/Segment;
    if-nez v2, :cond_2

    .line 1352
    return-wide v0

    .line 1353
    :cond_2
    iget-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr v3, p2

    cmp-long v5, v3, p2

    if-gez v5, :cond_3

    .line 1355
    iget-wide v3, p0, Lokio/Buffer;->size:J

    .line 1356
    .local v3, "offset":J
    :goto_0
    cmp-long v5, v3, p2

    if-lez v5, :cond_4

    .line 1357
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1358
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v3, v5

    goto :goto_0

    .line 1362
    .end local v3    # "offset":J
    :cond_3
    const-wide/16 v3, 0x0

    .line 1363
    .restart local v3    # "offset":J
    :goto_1
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    move-wide v7, v5

    .local v7, "nextOffset":J
    cmp-long v9, v5, p2

    if-gez v9, :cond_4

    .line 1364
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1365
    move-wide v3, v7

    goto :goto_1

    .line 1371
    .end local v7    # "nextOffset":J
    :cond_4
    :goto_2
    cmp-long v5, v3, p4

    if-gez v5, :cond_7

    .line 1372
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 1373
    .local v5, "data":[B
    iget v6, v2, Lokio/Segment;->limit:I

    int-to-long v6, v6

    iget v8, v2, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, p4

    sub-long/2addr v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 1374
    .local v7, "limit":I
    iget v6, v2, Lokio/Segment;->pos:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v3

    long-to-int v6, v8

    .line 1375
    .local v6, "pos":I
    :goto_3
    if-ge v6, v7, :cond_6

    .line 1376
    aget-byte v8, v5, v6

    if-ne v8, p1, :cond_5

    .line 1377
    iget v0, v2, Lokio/Segment;->pos:I

    sub-int v0, v6, v0

    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0

    .line 1375
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1382
    :cond_6
    iget v8, v2, Lokio/Segment;->limit:I

    iget v9, v2, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v3, v8

    .line 1383
    move-wide p2, v3

    .line 1384
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1385
    .end local v5    # "data":[B
    .end local v6    # "pos":I
    .end local v7    # "limit":I
    goto :goto_2

    .line 1387
    :cond_7
    return-wide v0

    .line 1336
    .end local v2    # "s":Lokio/Segment;
    .end local v3    # "offset":J
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lokio/Buffer;->size:J

    .line 1337
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1391
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 22
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1395
    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1396
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 1404
    iget-object v0, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 1405
    .local v0, "s":Lokio/Segment;
    const-wide/16 v7, -0x1

    if-nez v0, :cond_0

    .line 1407
    return-wide v7

    .line 1408
    :cond_0
    iget-wide v1, v6, Lokio/Buffer;->size:J

    sub-long v1, v1, p2

    cmp-long v3, v1, p2

    if-gez v3, :cond_1

    .line 1410
    iget-wide v1, v6, Lokio/Buffer;->size:J

    .line 1411
    .local v1, "offset":J
    :goto_0
    cmp-long v3, v1, p2

    if-lez v3, :cond_2

    .line 1412
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1413
    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 1417
    .end local v1    # "offset":J
    :cond_1
    const-wide/16 v1, 0x0

    .line 1418
    .restart local v1    # "offset":J
    :goto_1
    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    move-wide v9, v3

    .local v9, "nextOffset":J
    cmp-long v5, v3, p2

    if-gez v5, :cond_2

    .line 1419
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1420
    move-wide v1, v9

    goto :goto_1

    .line 1427
    .end local v9    # "nextOffset":J
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v3}, Lokio/ByteString;->getByte(I)B

    move-result v10

    .line 1428
    .local v10, "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v11

    .line 1429
    .local v11, "bytesSize":I
    iget-wide v3, v6, Lokio/Buffer;->size:J

    int-to-long v12, v11

    sub-long/2addr v3, v12

    const-wide/16 v12, 0x1

    add-long/2addr v12, v3

    move-wide/from16 v16, p2

    move-object v5, v0

    move-wide v14, v1

    .line 1430
    .end local v0    # "s":Lokio/Segment;
    .end local v1    # "offset":J
    .end local p2    # "fromIndex":J
    .local v5, "s":Lokio/Segment;
    .local v12, "resultLimit":J
    .local v14, "offset":J
    .local v16, "fromIndex":J
    :goto_2
    cmp-long v0, v14, v12

    if-gez v0, :cond_6

    .line 1432
    iget-object v4, v5, Lokio/Segment;->data:[B

    .line 1433
    .local v4, "data":[B
    iget v0, v5, Lokio/Segment;->limit:I

    int-to-long v0, v0

    iget v2, v5, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v12

    sub-long/2addr v2, v14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v3, v0

    .line 1434
    .local v3, "segmentLimit":I
    iget v0, v5, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long v0, v0, v16

    sub-long/2addr v0, v14

    long-to-int v1, v0

    move v2, v1

    .local v2, "pos":I
    :goto_3
    if-ge v2, v3, :cond_5

    .line 1435
    aget-byte v0, v4, v2

    if-ne v0, v10, :cond_3

    add-int/lit8 v18, v2, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v20, v2

    .end local v2    # "pos":I
    .local v20, "pos":I
    move/from16 v2, v18

    move/from16 v18, v3

    .end local v3    # "segmentLimit":I
    .local v18, "segmentLimit":I
    move-object/from16 v3, p1

    move-object/from16 v21, v4

    .end local v4    # "data":[B
    .local v21, "data":[B
    move/from16 v4, v19

    move-object v7, v5

    .end local v5    # "s":Lokio/Segment;
    .local v7, "s":Lokio/Segment;
    move v5, v11

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1436
    iget v0, v7, Lokio/Segment;->pos:I

    sub-int v2, v20, v0

    int-to-long v0, v2

    add-long/2addr v0, v14

    return-wide v0

    .line 1435
    .end local v7    # "s":Lokio/Segment;
    .end local v18    # "segmentLimit":I
    .end local v20    # "pos":I
    .end local v21    # "data":[B
    .restart local v2    # "pos":I
    .restart local v3    # "segmentLimit":I
    .restart local v4    # "data":[B
    .restart local v5    # "s":Lokio/Segment;
    :cond_3
    move/from16 v20, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-object v7, v5

    .line 1434
    .end local v2    # "pos":I
    .end local v3    # "segmentLimit":I
    .end local v4    # "data":[B
    .end local v5    # "s":Lokio/Segment;
    .restart local v7    # "s":Lokio/Segment;
    .restart local v18    # "segmentLimit":I
    .restart local v20    # "pos":I
    .restart local v21    # "data":[B
    :cond_4
    add-int/lit8 v2, v20, 0x1

    move-object v5, v7

    move/from16 v3, v18

    move-object/from16 v4, v21

    const-wide/16 v7, -0x1

    .end local v20    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_3

    .end local v7    # "s":Lokio/Segment;
    .end local v18    # "segmentLimit":I
    .end local v21    # "data":[B
    .restart local v3    # "segmentLimit":I
    .restart local v4    # "data":[B
    .restart local v5    # "s":Lokio/Segment;
    :cond_5
    move/from16 v20, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-object v7, v5

    .line 1441
    .end local v2    # "pos":I
    .end local v3    # "segmentLimit":I
    .end local v4    # "data":[B
    .end local v5    # "s":Lokio/Segment;
    .restart local v7    # "s":Lokio/Segment;
    .restart local v18    # "segmentLimit":I
    .restart local v21    # "data":[B
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v14, v0

    .line 1442
    move-wide/from16 v16, v14

    .line 1443
    iget-object v5, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 1444
    .end local v7    # "s":Lokio/Segment;
    .end local v18    # "segmentLimit":I
    .end local v21    # "data":[B
    .restart local v5    # "s":Lokio/Segment;
    const-wide/16 v7, -0x1

    goto :goto_2

    .line 1446
    :cond_6
    move-object v7, v5

    .end local v5    # "s":Lokio/Segment;
    .restart local v7    # "s":Lokio/Segment;
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1396
    .end local v7    # "s":Lokio/Segment;
    .end local v10    # "b0":B
    .end local v11    # "bytesSize":I
    .end local v12    # "resultLimit":J
    .end local v14    # "offset":J
    .end local v16    # "fromIndex":J
    .restart local p2    # "fromIndex":J
    :cond_7
    move-object/from16 v9, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    :cond_8
    move-object/from16 v9, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lokio/ByteString;

    .line 1450
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 16
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    .line 1454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_c

    .line 1462
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1463
    .local v2, "s":Lokio/Segment;
    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    .line 1465
    return-wide v3

    .line 1466
    :cond_0
    iget-wide v5, v0, Lokio/Buffer;->size:J

    sub-long v5, v5, p2

    cmp-long v7, v5, p2

    if-gez v7, :cond_1

    .line 1468
    iget-wide v5, v0, Lokio/Buffer;->size:J

    .line 1469
    .local v5, "offset":J
    :goto_0
    cmp-long v7, v5, p2

    if-lez v7, :cond_2

    .line 1470
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1471
    iget v7, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    goto :goto_0

    .line 1475
    .end local v5    # "offset":J
    :cond_1
    const-wide/16 v5, 0x0

    .line 1476
    .restart local v5    # "offset":J
    :goto_1
    iget v7, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v5

    move-wide v9, v7

    .local v9, "nextOffset":J
    cmp-long v11, v7, p2

    if-gez v11, :cond_2

    .line 1477
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1478
    move-wide v5, v9

    goto :goto_1

    .line 1486
    .end local v9    # "nextOffset":J
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v7, v8, :cond_7

    .line 1488
    invoke-virtual {v1, v9}, Lokio/ByteString;->getByte(I)B

    move-result v7

    .line 1489
    .local v7, "b0":B
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lokio/ByteString;->getByte(I)B

    move-result v8

    move-wide/from16 v9, p2

    .line 1490
    .end local p2    # "fromIndex":J
    .local v8, "b1":B
    .local v9, "fromIndex":J
    :goto_2
    iget-wide v11, v0, Lokio/Buffer;->size:J

    cmp-long v13, v5, v11

    if-gez v13, :cond_6

    .line 1491
    iget-object v11, v2, Lokio/Segment;->data:[B

    .line 1492
    .local v11, "data":[B
    iget v12, v2, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, v9

    sub-long/2addr v12, v5

    long-to-int v13, v12

    .local v13, "pos":I
    iget v12, v2, Lokio/Segment;->limit:I

    .local v12, "limit":I
    :goto_3
    if-ge v13, v12, :cond_5

    .line 1493
    aget-byte v14, v11, v13

    .line 1494
    .local v14, "b":I
    if-eq v14, v7, :cond_4

    if-ne v14, v8, :cond_3

    goto :goto_4

    .line 1492
    .end local v14    # "b":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1495
    .restart local v14    # "b":I
    :cond_4
    :goto_4
    iget v3, v2, Lokio/Segment;->pos:I

    sub-int v3, v13, v3

    int-to-long v3, v3

    add-long/2addr v3, v5

    return-wide v3

    .line 1500
    .end local v12    # "limit":I
    .end local v13    # "pos":I
    .end local v14    # "b":I
    :cond_5
    iget v12, v2, Lokio/Segment;->limit:I

    iget v13, v2, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v5, v12

    .line 1501
    move-wide v9, v5

    .line 1502
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1503
    .end local v11    # "data":[B
    goto :goto_2

    .line 1504
    .end local v7    # "b0":B
    .end local v8    # "b1":B
    :cond_6
    goto :goto_8

    .line 1506
    .end local v9    # "fromIndex":J
    .restart local p2    # "fromIndex":J
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v7

    move-wide/from16 v10, p2

    .line 1507
    .end local p2    # "fromIndex":J
    .local v7, "targetByteArray":[B
    .local v10, "fromIndex":J
    :goto_5
    iget-wide v12, v0, Lokio/Buffer;->size:J

    cmp-long v8, v5, v12

    if-gez v8, :cond_b

    .line 1508
    iget-object v8, v2, Lokio/Segment;->data:[B

    .line 1509
    .local v8, "data":[B
    iget v12, v2, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    sub-long/2addr v12, v5

    long-to-int v13, v12

    .restart local v13    # "pos":I
    iget v12, v2, Lokio/Segment;->limit:I

    .restart local v12    # "limit":I
    :goto_6
    if-ge v13, v12, :cond_a

    .line 1510
    aget-byte v14, v8, v13

    .line 1511
    .restart local v14    # "b":I
    array-length v15, v7

    :goto_7
    if-ge v9, v15, :cond_9

    aget-byte v3, v7, v9

    .line 1512
    .local v3, "t":B
    if-ne v14, v3, :cond_8

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int v4, v13, v4

    int-to-long v0, v4

    add-long/2addr v0, v5

    return-wide v0

    .line 1511
    .end local v3    # "t":B
    :cond_8
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_7

    .line 1509
    .end local v14    # "b":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v3, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_6

    .line 1517
    .end local v12    # "limit":I
    .end local v13    # "pos":I
    :cond_a
    iget v0, v2, Lokio/Segment;->limit:I

    iget v1, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v5, v0

    .line 1518
    move-wide v10, v5

    .line 1519
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1520
    .end local v8    # "data":[B
    const-wide/16 v3, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_5

    .line 1507
    :cond_b
    move-wide v9, v10

    .line 1523
    .end local v7    # "targetByteArray":[B
    .end local v10    # "fromIndex":J
    .restart local v9    # "fromIndex":J
    :goto_8
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1454
    .end local v2    # "s":Lokio/Segment;
    .end local v5    # "offset":J
    .end local v9    # "fromIndex":J
    .restart local p2    # "fromIndex":J
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 117
    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1579
    const/4 v0, 0x1

    return v0
.end method

.method public md5()Lokio/ByteString;
    .locals 1

    .line 1602
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 75
    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;

    .line 1527
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    .line 1532
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    iget-wide v1, p0, Lokio/Buffer;->size:J

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 1536
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    .line 1539
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 1540
    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1541
    return v0

    .line 1539
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1544
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1537
    :cond_3
    :goto_1
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 818
    .local v0, "s":Lokio/Segment;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 820
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 821
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 823
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 824
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 826
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_1

    .line 827
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 828
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 831
    :cond_1
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "sink"    # [B

    .line 785
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 798
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 800
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 801
    .local v0, "s":Lokio/Segment;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 802
    :cond_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 803
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 806
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 808
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_1

    .line 809
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 810
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 813
    :cond_1
    return v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 5
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .line 1314
    if-eqz p1, :cond_3

    .line 1315
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1316
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1317
    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 1318
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1319
    return-wide p2

    .line 1315
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAll(Lokio/Sink;)J
    .locals 5
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 594
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 595
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 597
    :cond_0
    return-wide v0
.end method

.method public readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 1

    .line 1767
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    .line 1771
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 1775
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1776
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1777
    return-object p1

    .line 1772
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .locals 9

    .line 280
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 282
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 283
    .local v0, "segment":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    .line 284
    .local v1, "pos":I
    iget v2, v0, Lokio/Segment;->limit:I

    .line 286
    .local v2, "limit":I
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 287
    .local v3, "data":[B
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .local v4, "pos":I
    aget-byte v1, v3, v1

    .line 288
    .local v1, "b":B
    iget-wide v5, p0, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 290
    if-ne v4, v2, :cond_0

    .line 291
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 292
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 294
    :cond_0
    iput v4, v0, Lokio/Segment;->pos:I

    .line 297
    :goto_0
    return v1

    .line 280
    .end local v0    # "segment":Lokio/Segment;
    .end local v1    # "b":B
    .end local v2    # "limit":I
    .end local v3    # "data":[B
    .end local v4    # "pos":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteArray()[B
    .locals 2

    .line 767
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .locals 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 774
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 775
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 779
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 780
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Lokio/Buffer;->readFully([B)V

    .line 781
    return-object v0

    .line 776
    .end local v0    # "result":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2

    .line 540
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 544
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 20

    .line 426
    move-object/from16 v0, p0

    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    .line 429
    const-wide/16 v1, 0x0

    .line 430
    .local v1, "value":J
    const/4 v3, 0x0

    .line 431
    .local v3, "seen":I
    const/4 v4, 0x0

    .line 432
    .local v4, "negative":Z
    const/4 v5, 0x0

    .line 434
    .local v5, "done":Z
    const-wide v6, -0xcccccccccccccccL

    .line 435
    .local v6, "overflowZone":J
    const-wide/16 v8, -0x7

    .line 438
    .local v8, "overflowDigit":J
    :goto_0
    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 440
    .local v10, "segment":Lokio/Segment;
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 441
    .local v11, "data":[B
    iget v12, v10, Lokio/Segment;->pos:I

    .line 442
    .local v12, "pos":I
    iget v13, v10, Lokio/Segment;->limit:I

    .line 444
    .local v13, "limit":I
    :goto_1
    if-ge v12, v13, :cond_7

    .line 445
    aget-byte v14, v11, v12

    .line 446
    .local v14, "b":B
    const/16 v15, 0x30

    if-lt v14, v15, :cond_4

    const/16 v15, 0x39

    if-gt v14, v15, :cond_4

    .line 447
    const/16 v15, 0x30

    sub-int/2addr v15, v14

    .line 450
    .local v15, "digit":I
    cmp-long v16, v1, v6

    if-ltz v16, :cond_2

    cmp-long v16, v1, v6

    if-nez v16, :cond_0

    move-wide/from16 v16, v6

    move v7, v5

    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .local v7, "done":Z
    .local v16, "overflowZone":J
    int-to-long v5, v15

    cmp-long v18, v5, v8

    if-gez v18, :cond_1

    goto :goto_2

    .end local v7    # "done":Z
    .end local v16    # "overflowZone":J
    .restart local v5    # "done":Z
    .restart local v6    # "overflowZone":J
    :cond_0
    move-wide/from16 v16, v6

    move v7, v5

    .line 455
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .restart local v7    # "done":Z
    .restart local v16    # "overflowZone":J
    :cond_1
    const-wide/16 v5, 0xa

    mul-long v1, v1, v5

    .line 456
    int-to-long v5, v15

    add-long/2addr v1, v5

    .line 457
    .end local v15    # "digit":I
    move/from16 v18, v7

    move-object/from16 v19, v11

    goto :goto_3

    .line 450
    .end local v7    # "done":Z
    .end local v16    # "overflowZone":J
    .restart local v5    # "done":Z
    .restart local v6    # "overflowZone":J
    .restart local v15    # "digit":I
    :cond_2
    move-wide/from16 v16, v6

    move v7, v5

    .line 451
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .restart local v7    # "done":Z
    .restart local v16    # "overflowZone":J
    :goto_2
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    invoke-virtual {v5, v1, v2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5, v14}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 452
    .local v5, "buffer":Lokio/Buffer;
    if-nez v4, :cond_3

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    .line 453
    :cond_3
    new-instance v6, Ljava/lang/NumberFormatException;

    move/from16 v18, v7

    .end local v7    # "done":Z
    .local v18, "done":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v11

    .end local v11    # "data":[B
    .local v19, "data":[B
    const-string v11, "Number too large: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 446
    .end local v15    # "digit":I
    .end local v16    # "overflowZone":J
    .end local v18    # "done":Z
    .end local v19    # "data":[B
    .local v5, "done":Z
    .restart local v6    # "overflowZone":J
    .restart local v11    # "data":[B
    :cond_4
    move/from16 v18, v5

    move-wide/from16 v16, v6

    move-object/from16 v19, v11

    .line 457
    .end local v5    # "done":Z
    .end local v6    # "overflowZone":J
    .end local v11    # "data":[B
    .restart local v16    # "overflowZone":J
    .restart local v18    # "done":Z
    .restart local v19    # "data":[B
    const/16 v5, 0x2d

    if-ne v14, v5, :cond_5

    if-nez v3, :cond_5

    .line 458
    const/4 v4, 0x1

    .line 459
    const-wide/16 v5, 0x1

    sub-long/2addr v8, v5

    .line 444
    .end local v14    # "b":B
    :goto_3
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v16

    move/from16 v5, v18

    move-object/from16 v11, v19

    goto :goto_1

    .line 461
    .restart local v14    # "b":B
    :cond_5
    if-eqz v3, :cond_6

    .line 466
    const/4 v5, 0x1

    .line 467
    .end local v18    # "done":Z
    .restart local v5    # "done":Z
    goto :goto_4

    .line 462
    .end local v5    # "done":Z
    .restart local v18    # "done":Z
    :cond_6
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 444
    .end local v14    # "b":B
    .end local v16    # "overflowZone":J
    .end local v18    # "done":Z
    .end local v19    # "data":[B
    .restart local v5    # "done":Z
    .restart local v6    # "overflowZone":J
    .restart local v11    # "data":[B
    :cond_7
    move/from16 v18, v5

    move-wide/from16 v16, v6

    move-object/from16 v19, v11

    .line 471
    .end local v6    # "overflowZone":J
    .end local v11    # "data":[B
    .restart local v16    # "overflowZone":J
    .restart local v19    # "data":[B
    :goto_4
    if-ne v12, v13, :cond_8

    .line 472
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 473
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    .line 475
    :cond_8
    iput v12, v10, Lokio/Segment;->pos:I

    .line 477
    .end local v10    # "segment":Lokio/Segment;
    .end local v12    # "pos":I
    .end local v13    # "limit":I
    .end local v19    # "data":[B
    :goto_5
    if-nez v5, :cond_a

    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    move-wide/from16 v6, v16

    goto/16 :goto_0

    .line 479
    :cond_a
    :goto_6
    iget-wide v6, v0, Lokio/Buffer;->size:J

    int-to-long v10, v3

    sub-long/2addr v6, v10

    iput-wide v6, v0, Lokio/Buffer;->size:J

    .line 480
    if-eqz v4, :cond_b

    move-wide v6, v1

    goto :goto_7

    :cond_b
    neg-long v6, v1

    :goto_7
    return-wide v6

    .line 426
    .end local v1    # "value":J
    .end local v3    # "seen":I
    .end local v4    # "negative":Z
    .end local v5    # "done":Z
    .end local v8    # "overflowDigit":J
    .end local v16    # "overflowZone":J
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 235
    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 242
    return-object p0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 3
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 585
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 589
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 590
    return-void

    .line 586
    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 587
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readFully([B)V
    .locals 3
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "offset":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 791
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    .line 792
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 793
    add-int/2addr v0, v1

    .line 794
    .end local v1    # "read":I
    goto :goto_0

    .line 792
    .restart local v1    # "read":I
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 795
    .end local v1    # "read":I
    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 15

    .line 484
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    .line 486
    const-wide/16 v0, 0x0

    .line 487
    .local v0, "value":J
    const/4 v4, 0x0

    .line 488
    .local v4, "seen":I
    const/4 v5, 0x0

    .line 491
    .local v5, "done":Z
    :cond_0
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 493
    .local v6, "segment":Lokio/Segment;
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 494
    .local v7, "data":[B
    iget v8, v6, Lokio/Segment;->pos:I

    .line 495
    .local v8, "pos":I
    iget v9, v6, Lokio/Segment;->limit:I

    .line 497
    .local v9, "limit":I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 500
    aget-byte v10, v7, v8

    .line 501
    .local v10, "b":B
    const/16 v11, 0x30

    if-lt v10, v11, :cond_1

    const/16 v11, 0x39

    if-gt v10, v11, :cond_1

    .line 502
    add-int/lit8 v11, v10, -0x30

    .local v11, "digit":I
    goto :goto_1

    .line 503
    .end local v11    # "digit":I
    :cond_1
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2

    .line 504
    add-int/lit8 v11, v10, -0x61

    add-int/lit8 v11, v11, 0xa

    .restart local v11    # "digit":I
    goto :goto_1

    .line 505
    .end local v11    # "digit":I
    :cond_2
    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    const/16 v11, 0x46

    if-gt v10, v11, :cond_4

    .line 506
    add-int/lit8 v11, v10, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 518
    .restart local v11    # "digit":I
    :goto_1
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v0

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    .line 523
    const/4 v12, 0x4

    shl-long/2addr v0, v12

    .line 524
    int-to-long v12, v11

    or-long/2addr v0, v12

    .line 497
    .end local v10    # "b":B
    .end local v11    # "digit":I
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 519
    .restart local v10    # "b":B
    .restart local v11    # "digit":I
    :cond_3
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 520
    .local v2, "buffer":Lokio/Buffer;
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Number too large: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 508
    .end local v2    # "buffer":Lokio/Buffer;
    .end local v11    # "digit":I
    :cond_4
    if-eqz v4, :cond_5

    .line 513
    const/4 v5, 0x1

    .line 514
    goto :goto_2

    .line 509
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 527
    .end local v10    # "b":B
    :cond_6
    :goto_2
    if-ne v8, v9, :cond_7

    .line 528
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v10

    iput-object v10, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 529
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_3

    .line 531
    :cond_7
    iput v8, v6, Lokio/Segment;->pos:I

    .line 533
    .end local v6    # "segment":Lokio/Segment;
    .end local v7    # "data":[B
    .end local v8    # "pos":I
    .end local v9    # "limit":I
    :goto_3
    if-nez v5, :cond_8

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_0

    .line 535
    :cond_8
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 536
    return-wide v0

    .line 484
    .end local v0    # "value":J
    .end local v4    # "seen":I
    .end local v5    # "done":Z
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public readInt()I
    .locals 10

    .line 348
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 350
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 351
    .local v0, "segment":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    .line 352
    .local v1, "pos":I
    iget v4, v0, Lokio/Segment;->limit:I

    .line 355
    .local v4, "limit":I
    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 356
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 357
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 358
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 359
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 356
    return v2

    .line 362
    :cond_0
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 363
    .local v5, "data":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .local v6, "pos":I
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    .line 367
    .local v1, "i":I
    iget-wide v8, p0, Lokio/Buffer;->size:J

    sub-long/2addr v8, v2

    iput-wide v8, p0, Lokio/Buffer;->size:J

    .line 369
    if-ne v7, v4, :cond_1

    .line 370
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 371
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 373
    :cond_1
    iput v7, v0, Lokio/Segment;->pos:I

    .line 376
    :goto_0
    return v1

    .line 348
    .end local v0    # "segment":Lokio/Segment;
    .end local v1    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "data":[B
    .end local v7    # "pos":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readIntLe()I
    .locals 1

    .line 418
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 15

    .line 380
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 382
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 383
    .local v0, "segment":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    .line 384
    .local v1, "pos":I
    iget v4, v0, Lokio/Segment;->limit:I

    .line 387
    .local v4, "limit":I
    sub-int v5, v4, v1

    const/16 v6, 0x20

    const/16 v7, 0x8

    if-ge v5, v7, :cond_0

    .line 388
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    shl-long/2addr v2, v6

    .line 389
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 388
    return-wide v2

    .line 392
    :cond_0
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 393
    .local v5, "data":[B
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "pos":I
    .local v8, "pos":I
    aget-byte v1, v5, v1

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    add-int/lit8 v1, v8, 0x1

    .end local v8    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v8, v5, v8

    int-to-long v13, v8

    and-long/2addr v13, v11

    const/16 v8, 0x30

    shl-long/2addr v13, v8

    or-long/2addr v9, v13

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "pos":I
    .restart local v8    # "pos":I
    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x28

    shl-long/2addr v13, v1

    or-long/2addr v9, v13

    add-int/lit8 v1, v8, 0x1

    .end local v8    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v8, v5, v8

    int-to-long v13, v8

    and-long/2addr v13, v11

    shl-long/2addr v13, v6

    or-long/2addr v9, v13

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .local v6, "pos":I
    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x18

    shl-long/2addr v13, v1

    or-long/2addr v9, v13

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v5, v6

    int-to-long v13, v6

    and-long/2addr v13, v11

    const/16 v6, 0x10

    shl-long/2addr v13, v6

    or-long/2addr v9, v13

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long v7, v13, v7

    or-long/2addr v7, v9

    add-int/lit8 v1, v6, 0x1

    .end local v6    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v5, v6

    int-to-long v9, v6

    and-long/2addr v9, v11

    or-long/2addr v7, v9

    .line 401
    .local v7, "v":J
    iget-wide v9, p0, Lokio/Buffer;->size:J

    sub-long/2addr v9, v2

    iput-wide v9, p0, Lokio/Buffer;->size:J

    .line 403
    if-ne v1, v4, :cond_1

    .line 404
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 405
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 407
    :cond_1
    iput v1, v0, Lokio/Segment;->pos:I

    .line 410
    :goto_0
    return-wide v7

    .line 380
    .end local v0    # "segment":Lokio/Segment;
    .end local v1    # "pos":I
    .end local v4    # "limit":I
    .end local v5    # "data":[B
    .end local v7    # "v":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLongLe()J
    .locals 2

    .line 422
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 10

    .line 319
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 321
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 322
    .local v0, "segment":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    .line 323
    .local v1, "pos":I
    iget v4, v0, Lokio/Segment;->limit:I

    .line 326
    .local v4, "limit":I
    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 327
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 328
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 329
    .local v2, "s":I
    int-to-short v3, v2

    return v3

    .line 332
    .end local v2    # "s":I
    :cond_0
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 333
    .local v5, "data":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .local v6, "pos":I
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    .line 335
    .local v1, "s":I
    iget-wide v8, p0, Lokio/Buffer;->size:J

    sub-long/2addr v8, v2

    iput-wide v8, p0, Lokio/Buffer;->size:J

    .line 337
    if-ne v7, v4, :cond_1

    .line 338
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 339
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 341
    :cond_1
    iput v7, v0, Lokio/Segment;->pos:I

    .line 344
    :goto_0
    int-to-short v2, v1

    return v2

    .line 319
    .end local v0    # "segment":Lokio/Segment;
    .end local v1    # "s":I
    .end local v4    # "limit":I
    .end local v5    # "data":[B
    .end local v7    # "pos":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShortLe()S
    .locals 1

    .line 414
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 621
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 622
    if-eqz p3, :cond_4

    .line 623
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    .line 626
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 628
    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 629
    .local v0, "s":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lokio/Segment;->limit:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 631
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 634
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 635
    .local v1, "result":Ljava/lang/String;
    iget v2, v0, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v3, v2

    iput v3, v0, Lokio/Segment;->pos:I

    .line 636
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 638
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_2

    .line 639
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 640
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 643
    :cond_2
    return-object v1

    .line 624
    .end local v0    # "s":Lokio/Segment;
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 614
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 1

    .line 1753
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    .line 1757
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 1761
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1762
    const/4 v0, 0x0

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1763
    return-object p1

    .line 1758
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .line 602
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 609
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 691
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    .line 693
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 698
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0x80

    const v2, 0xfffd

    if-nez v1, :cond_0

    .line 700
    and-int/lit8 v1, v0, 0x7f

    .line 701
    .local v1, "codePoint":I
    const/4 v3, 0x1

    .line 702
    .local v3, "byteCount":I
    const/4 v4, 0x0

    .local v4, "min":I
    goto :goto_0

    .line 704
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v3, 0xc0

    if-ne v1, v3, :cond_1

    .line 706
    and-int/lit8 v1, v0, 0x1f

    .line 707
    .restart local v1    # "codePoint":I
    const/4 v3, 0x2

    .line 708
    .restart local v3    # "byteCount":I
    const/16 v4, 0x80

    .restart local v4    # "min":I
    goto :goto_0

    .line 710
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v3, 0xe0

    if-ne v1, v3, :cond_2

    .line 712
    and-int/lit8 v1, v0, 0xf

    .line 713
    .restart local v1    # "codePoint":I
    const/4 v3, 0x3

    .line 714
    .restart local v3    # "byteCount":I
    const/16 v4, 0x800

    .restart local v4    # "min":I
    goto :goto_0

    .line 716
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v3, 0xf0

    if-ne v1, v3, :cond_9

    .line 718
    and-int/lit8 v1, v0, 0x7

    .line 719
    .restart local v1    # "codePoint":I
    const/4 v3, 0x4

    .line 720
    .restart local v3    # "byteCount":I
    const/high16 v4, 0x10000

    .line 728
    .restart local v4    # "min":I
    :goto_0
    iget-wide v5, p0, Lokio/Buffer;->size:J

    int-to-long v7, v3

    cmp-long v9, v5, v7

    if-ltz v9, :cond_8

    .line 736
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 737
    int-to-long v6, v5

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 738
    .local v6, "b":B
    and-int/lit16 v7, v6, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_3

    .line 740
    shl-int/lit8 v1, v1, 0x6

    .line 741
    and-int/lit8 v7, v6, 0x3f

    or-int/2addr v1, v7

    .line 736
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 743
    .restart local v6    # "b":B
    :cond_3
    int-to-long v7, v5

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 744
    return v2

    .line 748
    .end local v5    # "i":I
    .end local v6    # "b":B
    :cond_4
    int-to-long v5, v3

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 750
    const v5, 0x10ffff

    if-le v1, v5, :cond_5

    .line 751
    return v2

    .line 754
    :cond_5
    const v5, 0xd800

    if-lt v1, v5, :cond_6

    const v5, 0xdfff

    if-gt v1, v5, :cond_6

    .line 755
    return v2

    .line 758
    :cond_6
    if-ge v1, v4, :cond_7

    .line 759
    return v2

    .line 762
    :cond_7
    return v1

    .line 729
    :cond_8
    new-instance v2, Ljava/io/EOFException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lokio/Buffer;->size:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " (to read code point prefixed 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    .end local v1    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_9
    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 725
    return v2

    .line 691
    .end local v0    # "b0":B
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 647
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 649
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 650
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 653
    :cond_1
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 5
    .param p1, "newline"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 676
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 678
    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 680
    return-object v0

    .line 684
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 686
    return-object v2
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 657
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 12
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 661
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 662
    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    add-long v2, p1, v0

    .line 663
    .local v2, "scanLength":J
    :goto_0
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    .line 664
    .local v4, "newline":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 665
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    sub-long v0, v2, v0

    .line 666
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 667
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 669
    :cond_2
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 670
    .local v7, "data":Lokio/Buffer;
    const-wide/16 v8, 0x0

    const-wide/16 v0, 0x20

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v10

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 671
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\n not found: limit="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " content="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v7}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2026

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    .end local v2    # "scanLength":J
    .end local v4    # "newline":J
    .end local v7    # "data":Lokio/Buffer;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .locals 3
    .param p1, "byteCount"    # J

    .line 113
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public require(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    .line 110
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method segmentSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1591
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1592
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .local v1, "s":Lokio/Segment;
    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_1

    .line 1595
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1597
    .end local v1    # "s":Lokio/Segment;
    :cond_1
    return-object v0
.end method

.method public select(Lokio/Options;)I
    .locals 11
    .param p1, "options"    # Lokio/Options;

    .line 548
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 549
    .local v6, "s":Lokio/Segment;
    if-nez v6, :cond_0

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {p1, v0}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 551
    :cond_0
    iget-object v7, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 552
    .local v7, "byteStrings":[Lokio/ByteString;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v8, v7

    move v9, v0

    .end local v0    # "i":I
    .local v8, "listSize":I
    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 553
    aget-object v10, v7, v9

    .line 554
    .local v10, "b":Lokio/ByteString;
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {v10}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget v2, v6, Lokio/Segment;->pos:I

    const/4 v4, 0x0

    invoke-virtual {v10}, Lokio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    move-object v1, v6

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :try_start_0
    invoke-virtual {v10}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    return v9

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 552
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v10    # "b":Lokio/ByteString;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 563
    .end local v8    # "listSize":I
    .end local v9    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method selectPrefix(Lokio/Options;)I
    .locals 12
    .param p1, "options"    # Lokio/Options;

    .line 572
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 573
    .local v6, "s":Lokio/Segment;
    iget-object v7, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 574
    .local v7, "byteStrings":[Lokio/ByteString;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v8, v7

    move v9, v0

    .end local v0    # "i":I
    .local v8, "listSize":I
    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 575
    aget-object v10, v7, v9

    .line 576
    .local v10, "b":Lokio/ByteString;
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {v10}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    .line 577
    .local v11, "bytesLimit":I
    if-eqz v11, :cond_1

    iget v2, v6, Lokio/Segment;->pos:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v3, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 574
    .end local v10    # "b":Lokio/ByteString;
    .end local v11    # "bytesLimit":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 578
    .restart local v10    # "b":Lokio/ByteString;
    .restart local v11    # "bytesLimit":I
    :cond_1
    :goto_1
    return v9

    .line 581
    .end local v8    # "listSize":I
    .end local v9    # "i":I
    .end local v10    # "b":Lokio/ByteString;
    .end local v11    # "bytesLimit":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public sha1()Lokio/ByteString;
    .locals 1

    .line 1607
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .locals 1

    .line 1612
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha512()Lokio/ByteString;
    .locals 1

    .line 1617
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 848
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 849
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_1

    .line 851
    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 852
    .local v1, "toSkip":I
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 853
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 854
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 856
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->limit:I

    if-ne v0, v2, :cond_0

    .line 857
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 858
    .local v0, "toRecycle":Lokio/Segment;
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 859
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 861
    .end local v0    # "toRecycle":Lokio/Segment;
    .end local v1    # "toSkip":I
    :cond_0
    goto :goto_0

    .line 849
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 862
    :cond_2
    return-void
.end method

.method public snapshot()Lokio/ByteString;
    .locals 5

    .line 1738
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 1741
    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 1739
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public snapshot(I)Lokio/ByteString;
    .locals 1
    .param p1, "byteCount"    # I

    .line 1748
    if-nez p1, :cond_0

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object v0

    .line 1749
    :cond_0
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1586
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1719
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .locals 3
    .param p1, "minimumCapacity"    # I

    .line 1208
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    .line 1210
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    .line 1211
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1212
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    return-object v0

    .line 1215
    :cond_0
    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1216
    .local v1, "tail":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_1

    iget-boolean v0, v1, Lokio/Segment;->owner:Z

    if-nez v0, :cond_2

    .line 1217
    :cond_1
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v1

    .line 1219
    :cond_2
    return-object v1

    .line 1208
    .end local v1    # "tail":Lokio/Segment;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1032
    if-eqz p1, :cond_1

    .line 1034
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1035
    .local v0, "byteCount":I
    move v1, v0

    .line 1036
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_0

    .line 1037
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1039
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1040
    .local v3, "toCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1042
    sub-int/2addr v1, v3

    .line 1043
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    .line 1044
    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "toCopy":I
    goto :goto_0

    .line 1046
    :cond_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 1047
    return v0

    .line 1032
    .end local v0    # "byteCount":I
    .end local v1    # "remaining":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 2
    .param p1, "byteString"    # Lokio/ByteString;

    .line 865
    if-eqz p1, :cond_0

    .line 866
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    .line 867
    return-object p0

    .line 865
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)Lokio/Buffer;
    .locals 2
    .param p1, "source"    # [B

    .line 1008
    if-eqz p1, :cond_0

    .line 1009
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 7
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 1013
    if-eqz p1, :cond_1

    .line 1014
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1016
    add-int v0, p2, p3

    .line 1017
    .local v0, "limit":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1018
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1020
    .local v1, "tail":Lokio/Segment;
    sub-int v2, v0, p2

    iget v3, v1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1021
    .local v2, "toCopy":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    add-int/2addr p2, v2

    .line 1024
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->limit:I

    .line 1025
    .end local v1    # "tail":Lokio/Segment;
    .end local v2    # "toCopy":I
    goto :goto_0

    .line 1027
    :cond_0
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 1028
    return-object p0

    .line 1013
    .end local v0    # "limit":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 5
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1060
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1061
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 1062
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1063
    sub-long/2addr p2, v0

    .line 1064
    .end local v0    # "read":J
    goto :goto_0

    .line 1062
    .restart local v0    # "read":J
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 1065
    .end local v0    # "read":J
    :cond_1
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .line 1273
    if-eqz p1, :cond_7

    .line 1274
    if-eq p1, p0, :cond_6

    .line 1275
    iget-wide v0, p1, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1277
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_5

    .line 1279
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_3

    .line 1280
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1281
    .local v0, "tail":Lokio/Segment;
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lokio/Segment;->limit:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_1

    .line 1282
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget v3, v0, Lokio/Segment;->pos:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 1284
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1285
    iget-wide v1, p1, Lokio/Buffer;->size:J

    sub-long/2addr v1, p2

    iput-wide v1, p1, Lokio/Buffer;->size:J

    .line 1286
    iget-wide v1, p0, Lokio/Buffer;->size:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 1287
    return-void

    .line 1291
    :cond_2
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1296
    .end local v0    # "tail":Lokio/Segment;
    :cond_3
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1297
    .local v0, "segmentToMove":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1298
    .local v1, "movedByteCount":J
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1299
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_4

    .line 1300
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1301
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_3

    .line 1303
    :cond_4
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1304
    .local v3, "tail":Lokio/Segment;
    invoke-virtual {v3, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v3

    .line 1305
    invoke-virtual {v3}, Lokio/Segment;->compact()V

    .line 1307
    .end local v3    # "tail":Lokio/Segment;
    :goto_3
    iget-wide v3, p1, Lokio/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lokio/Buffer;->size:J

    .line 1308
    iget-wide v3, p0, Lokio/Buffer;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 1309
    sub-long/2addr p2, v1

    .line 1310
    .end local v0    # "segmentToMove":Lokio/Segment;
    .end local v1    # "movedByteCount":J
    goto :goto_0

    .line 1311
    :cond_5
    return-void

    .line 1274
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public writeAll(Lokio/Source;)J
    .locals 9
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1051
    if-eqz p1, :cond_1

    .line 1052
    const-wide/16 v0, 0x0

    .line 1053
    .local v0, "totalBytesRead":J
    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "readCount":J
    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 1054
    add-long/2addr v0, v4

    goto :goto_0

    .line 1056
    .end local v4    # "readCount":J
    :cond_0
    return-wide v0

    .line 1051
    .end local v0    # "totalBytesRead":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 5
    .param p1, "b"    # I

    .line 1069
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1070
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1071
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 1072
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 11
    .param p1, "v"    # J

    .line 1129
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1131
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_0
    const/4 v2, 0x0

    .line 1135
    .local v2, "negative":Z
    cmp-long v3, p1, v0

    if-gez v3, :cond_2

    .line 1136
    neg-long p1, p1

    .line 1137
    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    .line 1138
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1140
    :cond_1
    const/4 v2, 0x1

    .line 1144
    :cond_2
    const-wide/32 v3, 0x5f5e100

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v3

    if-gez v7, :cond_a

    .line 1147
    const-wide/16 v3, 0x2710

    cmp-long v7, p1, v3

    if-gez v7, :cond_6

    .line 1148
    const-wide/16 v3, 0x64

    cmp-long v7, p1, v3

    if-gez v7, :cond_4

    cmp-long v3, p1, v5

    if-gez v3, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 1149
    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v7, p1, v3

    if-gez v7, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 1151
    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v7, p1, v3

    if-gez v7, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v7, p1, v3

    if-gez v7, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_0

    .line 1152
    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v7, p1, v3

    if-gez v7, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_0

    .line 1154
    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_e

    .line 1155
    const-wide v3, 0x2540be400L

    cmp-long v7, p1, v3

    if-gez v7, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v7, p1, v3

    if-gez v7, :cond_b

    const/16 v3, 0x9

    goto :goto_0

    :cond_b
    const/16 v3, 0xa

    goto :goto_0

    .line 1156
    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v7, p1, v3

    if-gez v7, :cond_d

    const/16 v3, 0xb

    goto :goto_0

    :cond_d
    const/16 v3, 0xc

    goto :goto_0

    .line 1158
    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_f

    const/16 v3, 0xd

    goto :goto_0

    .line 1159
    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_10

    const/16 v3, 0xe

    goto :goto_0

    :cond_10
    const/16 v3, 0xf

    goto :goto_0

    .line 1161
    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_12

    const/16 v3, 0x10

    goto :goto_0

    :cond_12
    const/16 v3, 0x11

    goto :goto_0

    .line 1162
    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_14

    const/16 v3, 0x12

    goto :goto_0

    :cond_14
    const/16 v3, 0x13

    :goto_0
    nop

    .line 1163
    .local v3, "width":I
    if-eqz v2, :cond_15

    .line 1164
    add-int/lit8 v3, v3, 0x1

    .line 1167
    :cond_15
    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v4

    .line 1168
    .local v4, "tail":Lokio/Segment;
    iget-object v7, v4, Lokio/Segment;->data:[B

    .line 1169
    .local v7, "data":[B
    iget v8, v4, Lokio/Segment;->limit:I

    add-int/2addr v8, v3

    .line 1170
    .local v8, "pos":I
    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 1171
    rem-long v9, p1, v5

    long-to-int v10, v9

    .line 1172
    .local v10, "digit":I
    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lokio/Buffer;->DIGITS:[B

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 1173
    div-long/2addr p1, v5

    .line 1174
    .end local v10    # "digit":I
    goto :goto_1

    .line 1175
    :cond_16
    if-eqz v2, :cond_17

    .line 1176
    add-int/lit8 v8, v8, -0x1

    const/16 v0, 0x2d

    aput-byte v0, v7, v8

    .line 1179
    :cond_17
    iget v0, v4, Lokio/Segment;->limit:I

    add-int/2addr v0, v3

    iput v0, v4, Lokio/Segment;->limit:I

    .line 1180
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v5, v3

    add-long/2addr v0, v5

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1181
    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 9
    .param p1, "v"    # J

    .line 1185
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1187
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1190
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1192
    .local v0, "width":I
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1193
    .local v2, "tail":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1194
    .local v3, "data":[B
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .local v4, "pos":I
    iget v5, v2, Lokio/Segment;->limit:I

    .local v5, "start":I
    :goto_0
    if-lt v4, v5, :cond_1

    .line 1195
    sget-object v6, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v4

    .line 1196
    ushr-long/2addr p1, v1

    .line 1194
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1198
    .end local v4    # "pos":I
    .end local v5    # "start":I
    :cond_1
    iget v1, v2, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v2, Lokio/Segment;->limit:I

    .line 1199
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1200
    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 7
    .param p1, "i"    # I

    .line 1091
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1092
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1093
    .local v1, "data":[B
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1094
    .local v2, "limit":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .local v3, "limit":I
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1095
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1096
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .restart local v3    # "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1097
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1098
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1099
    iget-wide v3, p0, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 1100
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "i"    # I

    .line 1104
    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 9
    .param p1, "v"    # J

    .line 1108
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1109
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1110
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    .line 1111
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .local v4, "limit":I
    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    .line 1112
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    .line 1113
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    .line 1114
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    .line 1115
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    .line 1116
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    .line 1117
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 1118
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "limit":I
    .local v0, "limit":I
    and-long v5, p1, v7

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 1119
    iput v0, v1, Lokio/Segment;->limit:I

    .line 1120
    iget-wide v3, p0, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 1121
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 2
    .param p1, "v"    # J

    .line 1125
    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 7
    .param p1, "s"    # I

    .line 1076
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1077
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1078
    .local v1, "data":[B
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1079
    .local v2, "limit":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .local v3, "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1080
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1081
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1082
    iget-wide v3, p0, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 1083
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "s"    # I

    .line 1087
    int-to-short v0, p1

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 992
    if-eqz p1, :cond_5

    .line 993
    if-ltz p2, :cond_4

    .line 994
    if-lt p3, p2, :cond_3

    .line 997
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_2

    .line 1001
    if-eqz p4, :cond_1

    .line 1002
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1003
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1004
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    return-object v1

    .line 1001
    .end local v0    # "data":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 987
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    if-eqz p1, :cond_2

    .line 211
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 213
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 214
    .local v0, "s":Lokio/Segment;
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    .line 215
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 216
    .local v2, "toCopy":I
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/Segment;->pos:I

    .line 219
    iget-wide v3, p0, Lokio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 220
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 222
    iget v1, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v1, v3, :cond_0

    .line 223
    move-object v1, v0

    .line 224
    .local v1, "toRecycle":Lokio/Segment;
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 225
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 227
    .end local v1    # "toRecycle":Lokio/Segment;
    .end local v2    # "toCopy":I
    :cond_0
    goto :goto_0

    .line 229
    :cond_1
    return-object p0

    .line 210
    .end local v0    # "s":Lokio/Segment;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 875
    if-eqz p1, :cond_d

    .line 876
    if-ltz p2, :cond_c

    .line 877
    if-lt p3, p2, :cond_b

    .line 880
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_a

    .line 886
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_9

    .line 887
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 889
    .local v1, "c":I
    const/16 v2, 0x80

    if-ge v1, v2, :cond_2

    .line 890
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    .line 891
    .local v3, "tail":Lokio/Segment;
    iget-object v4, v3, Lokio/Segment;->data:[B

    .line 892
    .local v4, "data":[B
    iget v5, v3, Lokio/Segment;->limit:I

    sub-int/2addr v5, v0

    .line 893
    .local v5, "segmentOffset":I
    rsub-int v6, v5, 0x2000

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 896
    .local v6, "runLimit":I
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    add-int/2addr v0, v5

    int-to-byte v8, v1

    aput-byte v8, v4, v0

    .line 900
    :goto_1
    if-ge v7, v6, :cond_1

    .line 901
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 902
    if-lt v1, v2, :cond_0

    goto :goto_2

    .line 903
    :cond_0
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .restart local v0    # "i":I
    add-int/2addr v7, v5

    int-to-byte v8, v1

    aput-byte v8, v4, v7

    move v7, v0

    goto :goto_1

    .line 906
    .end local v0    # "i":I
    .restart local v7    # "i":I
    :cond_1
    :goto_2
    add-int v0, v7, v5

    iget v2, v3, Lokio/Segment;->limit:I

    sub-int/2addr v0, v2

    .line 907
    .local v0, "runSize":I
    iget v2, v3, Lokio/Segment;->limit:I

    add-int/2addr v2, v0

    iput v2, v3, Lokio/Segment;->limit:I

    .line 908
    iget-wide v8, p0, Lokio/Buffer;->size:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lokio/Buffer;->size:J

    .line 910
    .end local v0    # "runSize":I
    .end local v3    # "tail":Lokio/Segment;
    .end local v4    # "data":[B
    .end local v5    # "segmentOffset":I
    .end local v6    # "runLimit":I
    move v0, v7

    goto/16 :goto_6

    .end local v7    # "i":I
    .local v0, "i":I
    :cond_2
    const/16 v3, 0x800

    if-ge v1, v3, :cond_3

    .line 912
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 913
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 916
    :cond_3
    const v3, 0xd800

    const/16 v4, 0x3f

    if-lt v1, v3, :cond_8

    const v3, 0xdfff

    if-le v1, v3, :cond_4

    goto :goto_5

    .line 926
    :cond_4
    add-int/lit8 v5, v0, 0x1

    if-ge v5, p3, :cond_5

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 927
    .local v5, "low":I
    :goto_3
    const v6, 0xdbff

    if-gt v1, v6, :cond_7

    const v6, 0xdc00

    if-lt v5, v6, :cond_7

    if-le v5, v3, :cond_6

    goto :goto_4

    .line 936
    :cond_6
    const/high16 v3, 0x10000

    const v6, -0xd801

    and-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0xa

    const v7, -0xdc01

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    add-int/2addr v6, v3

    .line 939
    .local v6, "codePoint":I
    shr-int/lit8 v3, v6, 0x12

    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 940
    shr-int/lit8 v3, v6, 0xc

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 941
    shr-int/lit8 v3, v6, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 942
    and-int/lit8 v3, v6, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 943
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 928
    .end local v6    # "codePoint":I
    :cond_7
    :goto_4
    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 929
    add-int/lit8 v0, v0, 0x1

    .line 930
    goto/16 :goto_0

    .line 918
    .end local v5    # "low":I
    :cond_8
    :goto_5
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 919
    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 920
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 921
    add-int/lit8 v0, v0, 0x1

    .line 945
    .end local v1    # "c":I
    :goto_6
    goto/16 :goto_0

    .line 947
    .end local v0    # "i":I
    :cond_9
    return-object p0

    .line 881
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 3
    .param p1, "codePoint"    # I

    .line 951
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 953
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 955
    :cond_0
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    .line 957
    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 958
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 960
    :cond_1
    const/high16 v1, 0x10000

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_3

    .line 961
    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 963
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 966
    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 967
    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 968
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 971
    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    .line 973
    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 974
    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 975
    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 976
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 983
    :goto_0
    return-object p0

    .line 979
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method
