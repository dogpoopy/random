.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_REQUEST:Lokhttp3/RequestBody;

.field public static final EMPTY_RESPONSE:Lokhttp3/ResponseBody;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_16_BE:Ljava/nio/charset/Charset;

.field private static final UTF_16_BE_BOM:Lokio/ByteString;

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final UTF_16_LE_BOM:Lokio/ByteString;

.field private static final UTF_32_BE:Ljava/nio/charset/Charset;

.field private static final UTF_32_BE_BOM:Lokio/ByteString;

.field private static final UTF_32_LE:Ljava/nio/charset/Charset;

.field private static final UTF_32_LE_BOM:Lokio/ByteString;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final UTF_8_BOM:Lokio/ByteString;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 51
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 52
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    .line 54
    const-string v0, "efbbbf"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    .line 55
    const-string v0, "feff"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    .line 56
    const-string v0, "fffe"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    .line 57
    const-string v0, "0000ffff"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    .line 58
    const-string v0, "ffff0000"

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    .line 60
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 61
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 62
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    .line 63
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    .line 64
    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    .line 65
    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    .line 68
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 70
    new-instance v0, Lokhttp3/internal/Util$1;

    invoke-direct {v0}, Lokhttp3/internal/Util$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 86
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 465
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 467
    .local v0, "assertionError":Ljava/lang/AssertionError;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    goto :goto_0

    .line 468
    :catch_0
    move-exception v1

    .line 471
    :goto_0
    return-object v0
.end method

.method public static bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "source"    # Lokio/BufferedSource;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 434
    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 436
    :cond_0
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 438
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 440
    :cond_1
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 442
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    return-object v0

    .line 444
    :cond_2
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 446
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 448
    :cond_3
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 450
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    return-object v0

    .line 452
    :cond_4
    return-object p1
.end method

.method public static canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;

    .line 361
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 363
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p0, v2, v0}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v2}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    nop

    .line 366
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_1

    return-object v1

    .line 367
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 368
    .local v1, "address":[B
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    invoke-static {v1}, Lokhttp3/internal/Util;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 369
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IPv6 address: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 373
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v1    # "address":[B
    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 377
    :cond_4
    invoke-static {v0}, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    .line 378
    return-object v1

    .line 381
    :cond_5
    return-object v0

    .line 382
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method public static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 456
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 457
    if-eqz p3, :cond_3

    .line 458
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 459
    .local v2, "millis":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    .line 460
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " too small."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    :goto_0
    long-to-int v0, v2

    return v0

    .line 459
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " too large."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    .end local v2    # "millis":J
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 5
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .line 93
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v2, v0, p4

    if-ltz v2, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 108
    if-eqz p0, :cond_0

    .line 110
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 116
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 1
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .line 140
    if-eqz p0, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 148
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;

    .line 123
    if-eqz p0, :cond_1

    .line 125
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    goto :goto_1

    .line 128
    :catch_1
    move-exception v0

    .line 129
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 126
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_0

    .restart local v0    # "e":Ljava/lang/AssertionError;
    :cond_0
    throw v0

    .line 133
    .end local v0    # "e":Ljava/lang/AssertionError;
    :cond_1
    :goto_1
    return-void
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 276
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 277
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 279
    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 389
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 393
    .local v1, "c":C
    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-le v1, v2, :cond_2

    const/16 v2, 0x7f

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 399
    :cond_0
    const-string v2, " #%/:?@[\\]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 400
    return v3

    .line 388
    .end local v1    # "c":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    .restart local v1    # "c":C
    :cond_2
    :goto_1
    return v3

    .line 403
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static decodeHexDigit(C)I
    .locals 1
    .param p0, "c"    # C

    .line 475
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 476
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 477
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 478
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .line 555
    move v0, p4

    .line 557
    .local v0, "b":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_8

    .line 558
    array-length v3, p3

    if-ne v0, v3, :cond_0

    return v2

    .line 561
    :cond_0
    if-eq v0, p4, :cond_2

    .line 562
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    return v2

    .line 563
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 567
    :cond_2
    const/4 v3, 0x0

    .line 568
    .local v3, "value":I
    move v4, v1

    .line 569
    .local v4, "groupOffset":I
    :goto_1
    if-ge v1, p2, :cond_6

    .line 570
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 571
    .local v5, "c":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_6

    const/16 v7, 0x39

    if-le v5, v7, :cond_3

    goto :goto_2

    .line 572
    :cond_3
    if-nez v3, :cond_4

    if-eq v4, v1, :cond_4

    return v2

    .line 573
    :cond_4
    mul-int/lit8 v7, v3, 0xa

    add-int/2addr v7, v5

    add-int/lit8 v3, v7, -0x30

    .line 574
    const/16 v6, 0xff

    if-le v3, v6, :cond_5

    return v2

    .line 569
    .end local v5    # "c":C
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 576
    :cond_6
    :goto_2
    sub-int v5, v1, v4

    .line 577
    .local v5, "groupLength":I
    if-nez v5, :cond_7

    return v2

    .line 580
    :cond_7
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "b":I
    .local v2, "b":I
    int-to-byte v6, v3

    aput-byte v6, p3, v0

    .line 581
    .end local v3    # "value":I
    .end local v4    # "groupOffset":I
    .end local v5    # "groupLength":I
    move v0, v2

    goto :goto_0

    .line 583
    .end local v1    # "i":I
    .end local v2    # "b":I
    .restart local v0    # "b":I
    :cond_8
    add-int/lit8 v1, p4, 0x4

    if-eq v0, v1, :cond_9

    return v2

    .line 584
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 483
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 484
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 485
    .local v1, "b":I
    const/4 v2, -0x1

    .line 486
    .local v2, "compress":I
    const/4 v3, -0x1

    .line 488
    .local v3, "groupOffset":I
    move v4, p1

    .local v4, "i":I
    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v4, p2, :cond_b

    .line 489
    array-length v8, v0

    if-ne v1, v8, :cond_0

    return-object v7

    .line 492
    :cond_0
    add-int/lit8 v8, v4, 0x2

    if-gt v8, p2, :cond_2

    const/4 v8, 0x2

    const-string v9, "::"

    invoke-virtual {p0, v4, v9, v6, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 494
    if-eq v2, v5, :cond_1

    return-object v7

    .line 495
    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 496
    add-int/lit8 v1, v1, 0x2

    .line 497
    move v2, v1

    .line 498
    if-ne v4, p2, :cond_6

    goto :goto_5

    .line 499
    :cond_2
    if-eqz v1, :cond_6

    .line 501
    const/4 v8, 0x1

    const-string v9, ":"

    invoke-virtual {p0, v4, v9, v6, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 502
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 503
    :cond_3
    const-string v9, "."

    invoke-virtual {p0, v4, v9, v6, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 505
    add-int/lit8 v8, v1, -0x2

    invoke-static {p0, v3, p2, v0, v8}, Lokhttp3/internal/Util;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v8

    if-nez v8, :cond_4

    return-object v7

    .line 506
    :cond_4
    add-int/lit8 v1, v1, 0x2

    .line 507
    goto :goto_5

    .line 509
    :cond_5
    return-object v7

    .line 514
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 515
    .local v6, "value":I
    move v3, v4

    .line 516
    :goto_2
    if-ge v4, p2, :cond_8

    .line 517
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 518
    .local v8, "c":C
    invoke-static {v8}, Lokhttp3/internal/Util;->decodeHexDigit(C)I

    move-result v9

    .line 519
    .local v9, "hexDigit":I
    if-ne v9, v5, :cond_7

    goto :goto_3

    .line 520
    :cond_7
    shl-int/lit8 v10, v6, 0x4

    add-int v6, v10, v9

    .line 516
    .end local v8    # "c":C
    .end local v9    # "hexDigit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 522
    :cond_8
    :goto_3
    sub-int v5, v4, v3

    .line 523
    .local v5, "groupLength":I
    if-eqz v5, :cond_a

    const/4 v8, 0x4

    if-le v5, v8, :cond_9

    goto :goto_4

    .line 526
    :cond_9
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "b":I
    .local v7, "b":I
    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 527
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "b":I
    .restart local v1    # "b":I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 528
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    goto :goto_0

    .line 523
    .restart local v5    # "groupLength":I
    .restart local v6    # "value":I
    :cond_a
    :goto_4
    return-object v7

    .line 539
    .end local v4    # "i":I
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    :cond_b
    :goto_5
    array-length v4, v0

    if-eq v1, v4, :cond_d

    .line 540
    if-ne v2, v5, :cond_c

    return-object v7

    .line 541
    :cond_c
    array-length v4, v0

    sub-int v5, v1, v2

    sub-int/2addr v4, v5

    sub-int v5, v1, v2

    invoke-static {v0, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-static {v0, v2, v4, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 546
    :cond_d
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 547
    :catch_0
    move-exception v4

    .line 548
    .local v4, "e":Ljava/net/UnknownHostException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_7

    :goto_6
    throw v5

    :goto_7
    goto :goto_6
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiter"    # C

    .line 345
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    return v0

    .line 345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .line 334
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v0

    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p0, "source"    # Lokio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 157
    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 100
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 428
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Lokhttp3/HttpUrl;
    .param p1, "includeDefaultPort"    # Z

    .line 251
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 254
    .local v0, "host":Ljava/lang/String;
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    move-object v1, v0

    goto :goto_2

    .line 255
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    :goto_2
    return-object v1
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 192
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 197
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 269
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 270
    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 413
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 414
    .local v2, "c":C
    const/16 v3, 0x1f

    if-le v2, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 412
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .restart local v2    # "c":C
    :cond_1
    :goto_1
    return v0

    .line 418
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "c":C
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 8
    .param p0, "address"    # [B

    .line 592
    const/4 v0, -0x1

    .line 593
    .local v0, "longestRunOffset":I
    const/4 v1, 0x0

    .line 594
    .local v1, "longestRunLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    const/16 v4, 0x10

    if-ge v2, v3, :cond_2

    .line 595
    move v3, v2

    .line 596
    .local v3, "currentRunOffset":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v5, p0, v2

    if-nez v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_0

    .line 597
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 599
    :cond_0
    sub-int v4, v2, v3

    .line 600
    .local v4, "currentRunLength":I
    if-le v4, v1, :cond_1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_1

    .line 601
    move v0, v3

    .line 602
    move v1, v4

    .line 594
    .end local v3    # "currentRunOffset":I
    .end local v4    # "currentRunLength":I
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 607
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 608
    .local v2, "result":Lokio/Buffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_3
    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_6

    .line 609
    const/16 v5, 0x3a

    if-ne v3, v0, :cond_4

    .line 610
    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 611
    add-int/2addr v3, v1

    .line 612
    if-ne v3, v4, :cond_3

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    .line 614
    :cond_4
    if-lez v3, :cond_5

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 615
    :cond_5
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 616
    .local v5, "group":I
    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 617
    nop

    .end local v5    # "group":I
    add-int/lit8 v3, v3, 0x2

    .line 618
    goto :goto_2

    .line 620
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "first"    # [Ljava/lang/String;
    .param p2, "second"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 217
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 219
    .local v4, "a":Ljava/lang/String;
    array-length v5, p2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p2, v6

    .line 220
    .local v7, "b":Ljava/lang/String;
    invoke-interface {p0, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_0

    .line 221
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    goto :goto_2

    .line 219
    .end local v7    # "b":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 218
    .end local v4    # "a":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 264
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0
.end method

.method public static nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "first"    # [Ljava/lang/String;
    .param p2, "second"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 237
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v1, p1

    if-eqz v1, :cond_4

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    .line 240
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 241
    .local v3, "a":Ljava/lang/String;
    array-length v4, p2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p2, v5

    .line 242
    .local v6, "b":Ljava/lang/String;
    invoke-interface {p0, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1

    .line 243
    const/4 v0, 0x1

    return v0

    .line 241
    .end local v6    # "b":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 240
    .end local v3    # "a":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_3
    return v0

    .line 238
    :cond_4
    :goto_2
    return v0
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p0, "source"    # Lokio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 169
    .local v0, "now":J
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_0

    .line 171
    :cond_0
    move-wide v5, v3

    :goto_0
    nop

    .line 172
    .local v5, "originalDuration":J
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 174
    :try_start_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 175
    .local v2, "skipBuffer":Lokio/Buffer;
    :goto_1
    const-wide/16 v7, 0x2000

    invoke-interface {p0, v2, v7, v8}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    .line 176
    invoke-virtual {v2}, Lokio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 178
    :cond_1
    const/4 v7, 0x1

    .line 182
    cmp-long v8, v5, v3

    if-nez v8, :cond_2

    .line 183
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_2

    .line 185
    :cond_2
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    add-long v8, v0, v5

    invoke-virtual {v3, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 178
    :goto_2
    return v7

    .line 182
    .end local v2    # "skipBuffer":Lokio/Buffer;
    :catchall_0
    move-exception v2

    cmp-long v7, v5, v3

    if-nez v7, :cond_3

    .line 183
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_3

    .line 185
    :cond_3
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    add-long v7, v0, v5

    invoke-virtual {v3, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :goto_3
    throw v2

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/InterruptedIOException;
    const/4 v7, 0x0

    .line 182
    cmp-long v8, v5, v3

    if-nez v8, :cond_4

    .line 183
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_4

    .line 185
    :cond_4
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    add-long v8, v0, v5

    invoke-virtual {v3, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 180
    :goto_4
    return v7
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 287
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 296
    return v0

    .line 294
    :cond_0
    nop

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 307
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 308
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 316
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 314
    :cond_0
    nop

    .line 307
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_1
    return p1
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .line 201
    new-instance v0, Lokhttp3/internal/Util$2;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/Util$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 324
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    .line 325
    .local v0, "start":I
    invoke-static {p0, v0, p2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    .line 326
    .local v1, "end":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .line 423
    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
