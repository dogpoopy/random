.class public Lcom/netease/ntunisdk/okio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/netease/ntunisdk/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/netease/ntunisdk/okio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 55
    fill-array-data v0, :array_0

    .line 54
    sput-object v0, Lcom/netease/ntunisdk/okio/ByteString;->HEX_DIGITS:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 59
    invoke-static {v0}, Lcom/netease/ntunisdk/okio/ByteString;->of([B)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okio/ByteString;->EMPTY:Lcom/netease/ntunisdk/okio/ByteString;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .locals 5

    .line 514
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 525
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    .line 518
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 519
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    :cond_2
    const v4, 0xfffd

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 514
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public static decodeBase64(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    .line 204
    invoke-static {p0}, Lcom/netease/ntunisdk/okio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 205
    new-instance v0, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 203
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "base64 == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 5

    if-eqz p0, :cond_2

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 230
    invoke-static {v1}, Lcom/netease/ntunisdk/okio/ByteString;->of([B)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p0

    return-object p0

    :cond_0
    mul-int/lit8 v3, v2, 0x2

    .line 226
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/netease/ntunisdk/okio/ByteString;->decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 227
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/netease/ntunisdk/okio/ByteString;->decodeHexDigit(C)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 228
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hex == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static decodeHexDigit(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private digest(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    .line 157
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/ByteString;->of([B)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 159
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 110
    new-instance v0, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    return-object v0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "s == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 2

    if-eqz p0, :cond_0

    .line 101
    new-instance v0, Lcom/netease/ntunisdk/okio/ByteString;

    sget-object v1, Lcom/netease/ntunisdk/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    .line 102
    iput-object p0, v0, Lcom/netease/ntunisdk/okio/ByteString;->utf8:Ljava/lang/String;

    return-object v0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hmac(Ljava/lang/String;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 2

    .line 180
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 181
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 182
    iget-object p1, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/ByteString;->of([B)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 186
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 184
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 94
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 95
    new-instance p0, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    return-object p0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs of([B)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    if-eqz p0, :cond_0

    .line 74
    new-instance v0, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    return-object v0

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of([BII)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 7

    if-eqz p0, :cond_0

    .line 83
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lcom/netease/ntunisdk/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 85
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 86
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    new-instance p0, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    return-object p0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-ltz p1, :cond_2

    .line 250
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    .line 255
    new-instance p0, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    return-object p0

    :cond_0
    sub-int v2, p1, v1

    .line 252
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v1, v2

    goto :goto_0

    .line 253
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 248
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 530
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p1

    .line 532
    :try_start_0
    const-class v0, Lcom/netease/ntunisdk/okio/ByteString;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 534
    iget-object p1, p1, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 538
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 536
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 544
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/netease/ntunisdk/okio/ByteString;)I
    .locals 9

    .line 474
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v0

    .line 475
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v1

    .line 476
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-lt v4, v2, :cond_2

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 477
    :cond_2
    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/okio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 478
    invoke-virtual {p1, v4}, Lcom/netease/ntunisdk/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v7, v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    return v5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/okio/ByteString;->compareTo(Lcom/netease/ntunisdk/okio/ByteString;)I

    move-result p1

    return p1
.end method

.method public final endsWith(Lcom/netease/ntunisdk/okio/ByteString;)Z
    .locals 3

    .line 410
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/netease/ntunisdk/okio/ByteString;->rangeEquals(ILcom/netease/ntunisdk/okio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public final endsWith([B)Z
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/netease/ntunisdk/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 463
    :cond_0
    instance-of v1, p1, Lcom/netease/ntunisdk/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 464
    check-cast p1, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v1

    iget-object v3, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v4, v3

    if-ne v1, v4, :cond_1

    .line 465
    array-length v1, v3

    invoke-virtual {p1, v2, v3, v2, v1}, Lcom/netease/ntunisdk/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getByte(I)B
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->hashCode:I

    :goto_0
    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    .line 210
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 212
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 216
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 212
    :cond_0
    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 213
    sget-object v7, Lcom/netease/ntunisdk/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 214
    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public hmacSha1(Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    const-string v0, "HmacSHA1"

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/okio/ByteString;->hmac(Ljava/lang/String;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha256(Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    const-string v0, "HmacSHA256"

    .line 170
    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/okio/ByteString;->hmac(Ljava/lang/String;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha512(Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    const-string v0, "HmacSHA512"

    .line 175
    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/okio/ByteString;->hmac(Ljava/lang/String;Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Lcom/netease/ntunisdk/okio/ByteString;)I
    .locals 1

    .line 418
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->internalArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/okio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public final indexOf(Lcom/netease/ntunisdk/okio/ByteString;I)I
    .locals 0

    .line 422
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/okio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public final indexOf([B)I
    .locals 1

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/okio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public indexOf([BI)I
    .locals 4

    const/4 v0, 0x0

    .line 430
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 431
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    :goto_0
    if-le p2, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v3, p1

    invoke-static {v2, p2, p1, v0, v3}, Lcom/netease/ntunisdk/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method internalArray()[B
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    return-object v0
.end method

.method public final lastIndexOf(Lcom/netease/ntunisdk/okio/ByteString;)I
    .locals 1

    .line 440
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/okio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Lcom/netease/ntunisdk/okio/ByteString;I)I
    .locals 0

    .line 444
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/okio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf([B)I
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/okio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public lastIndexOf([BI)I
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-gez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lcom/netease/ntunisdk/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method public md5()Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    const-string v0, "MD5"

    .line 137
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/ByteString;->digest(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/netease/ntunisdk/okio/ByteString;II)Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/netease/ntunisdk/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(I[BII)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    .line 397
    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    .line 398
    invoke-static {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sha1()Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    const-string v0, "SHA-1"

    .line 142
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/ByteString;->digest(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    const-string v0, "SHA-256"

    .line 147
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/ByteString;->digest(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha512()Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    const-string v0, "SHA-512"

    .line 152
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okio/ByteString;->digest(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lcom/netease/ntunisdk/okio/ByteString;)Z
    .locals 2

    .line 402
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/netease/ntunisdk/okio/ByteString;->rangeEquals(ILcom/netease/ntunisdk/okio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public final startsWith([B)Z
    .locals 2

    .line 406
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/netease/ntunisdk/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public substring(I)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/okio/ByteString;->substring(II)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lcom/netease/ntunisdk/okio/ByteString;
    .locals 3

    if-ltz p1, :cond_3

    .line 323
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v1, v0

    if-gt p2, v1, :cond_2

    sub-int v1, p2, p1

    if-ltz v1, :cond_1

    if-nez p1, :cond_0

    .line 330
    array-length v2, v0

    if-ne p2, v2, :cond_0

    return-object p0

    .line 334
    :cond_0
    new-array p2, v1, [B

    const/4 v2, 0x0

    .line 335
    invoke-static {v0, p1, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    new-instance p1, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    return-object p1

    .line 328
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > length("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toAsciiLowercase()Lcom/netease/ntunisdk/okio/ByteString;
    .locals 6

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-object p0

    .line 266
    :cond_0
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_5

    const/16 v4, 0x5a

    if-le v2, v4, :cond_1

    goto :goto_3

    .line 271
    :cond_1
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 272
    aput-byte v2, v1, v0

    .line 273
    :goto_1
    array-length v0, v1

    if-lt v5, v0, :cond_2

    .line 278
    new-instance v0, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    return-object v0

    .line 274
    :cond_2
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_4

    if-le v0, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 276
    aput-byte v0, v1, v5

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toAsciiUppercase()Lcom/netease/ntunisdk/okio/ByteString;
    .locals 6

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-object p0

    .line 291
    :cond_0
    aget-byte v2, v1, v0

    const/16 v3, 0x61

    if-lt v2, v3, :cond_5

    const/16 v4, 0x7a

    if-le v2, v4, :cond_1

    goto :goto_3

    .line 296
    :cond_1
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    .line 297
    aput-byte v2, v1, v0

    .line 298
    :goto_1
    array-length v0, v1

    if-lt v5, v0, :cond_2

    .line 303
    new-instance v0, Lcom/netease/ntunisdk/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/okio/ByteString;-><init>([B)V

    return-object v0

    .line 299
    :cond_2
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_4

    if-le v0, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    .line 301
    aput-byte v0, v1, v5

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 491
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "[size=0]"

    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 496
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/okio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "\u2026]"

    const-string v5, "[size="

    const-string v6, "]"

    const/4 v7, 0x0

    if-ne v2, v3, :cond_2

    .line 499
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v0, v0

    if-gt v0, v1, :cond_1

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v1}, Lcom/netease/ntunisdk/okio/ByteString;->substring(II)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 504
    :cond_2
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\"

    const-string v7, "\\\\"

    .line 505
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v7, "\\n"

    .line 506
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v7, "\\r"

    .line 507
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 510
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[text="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    sget-object v2, Lcom/netease/ntunisdk/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->utf8:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method write(Lcom/netease/ntunisdk/okio/Buffer;)V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/netease/ntunisdk/okio/Buffer;->write([BII)Lcom/netease/ntunisdk/okio/Buffer;

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 372
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
