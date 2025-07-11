.class public Ltv/danmaku/ijk/media/player/CCFileEncrypter;
.super Ljava/lang/Object;
.source "CCFileEncrypter.java"


# instance fields
.field private HEADER_LEN:I

.field private cc_headData:[B

.field private cc_m:[I

.field private cc_p:[I

.field private cc_rm:[I

.field private cc_s:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 13
    iput v0, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->HEADER_LEN:I

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 14
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_s:[I

    new-array v1, v0, [I

    .line 15
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_p:[I

    new-array v1, v0, [I

    .line 16
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_m:[I

    new-array v0, v0, [I

    .line 17
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_rm:[I

    return-void
.end method

.method private ccswap([I[III)V
    .locals 2

    .line 22
    aget v0, p1, p3

    .line 23
    aget v1, p2, p4

    aput v1, p1, p3

    .line 24
    aput v0, p2, p4

    return-void
.end method


# virtual methods
.method public decryptData([BII)V
    .locals 4

    .line 103
    iget v0, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->HEADER_LEN:I

    if-ge p3, v0, :cond_1

    sub-int/2addr v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    if-ge v1, v0, :cond_0

    .line 107
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_headData:[B

    add-int v3, p3, v1

    aget-byte v2, v2, v3

    aput-byte v2, p1, v1

    goto :goto_1

    .line 109
    :cond_0
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 110
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_rm:[I

    aget v2, v3, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->simpleDecrypt([BI)V

    :cond_2
    return-void
.end method

.method public decryptHeader(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget v0, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->HEADER_LEN:I

    new-array v0, v0, [B

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_headData:[B

    .line 96
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 97
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_headData:[B

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    .line 98
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_headData:[B

    invoke-virtual {p0, v1, p1}, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->rc4Process([BI)V

    .line 99
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p3}, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->initialEncrypter(Ljava/lang/String;)V

    .line 63
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    iget v0, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->HEADER_LEN:I

    new-array v1, v0, [B

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 73
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    if-ne v3, v2, :cond_0

    if-nez p4, :cond_0

    .line 75
    invoke-virtual {p0, v1, v4}, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->rc4Process([BI)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    .line 79
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    .line 80
    iget-object v8, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_m:[I

    aget v7, v8, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    :cond_1
    :goto_2
    invoke-virtual {p1, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 88
    array-length p4, p1

    invoke-virtual {p3, p1, v6, p4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 89
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    .line 90
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 91
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public initialEncrypter(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 43
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_s:[I

    aput v1, v2, v1

    .line 44
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_m:[I

    aput v1, v2, v1

    .line 45
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_p:[I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int v3, v1, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge p1, v2, :cond_1

    .line 48
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_s:[I

    aget v4, v3, p1

    add-int/2addr v1, v4

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_p:[I

    aget v4, v4, p1

    add-int/2addr v1, v4

    rem-int/2addr v1, v2

    .line 49
    invoke-direct {p0, v3, v3, p1, v1}, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->ccswap([I[III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v2, :cond_2

    .line 52
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_s:[I

    aget v1, v1, p1

    .line 53
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_m:[I

    invoke-direct {p0, v3, v3, p1, v1}, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->ccswap([I[III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v0, v2, :cond_3

    .line 56
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_m:[I

    aget p1, p1, v0

    .line 57
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_rm:[I

    aput v0, v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method rc4Process([BI)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 31
    rem-int/lit16 v0, v0, 0x100

    .line 32
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_s:[I

    aget v3, p2, v0

    add-int/2addr v1, v3

    rem-int/lit16 v1, v1, 0x100

    .line 33
    invoke-direct {p0, p2, p2, v0, v1}, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->ccswap([I[III)V

    .line 34
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_s:[I

    aget v3, p2, v0

    aget v4, p2, v1

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x100

    .line 35
    aget p2, p2, v3

    .line 36
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr p2, v3

    int-to-byte p2, p2

    .line 37
    aput-byte p2, p1, v2

    move p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public simpleDecrypt([BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 120
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 121
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/CCFileEncrypter;->cc_rm:[I

    aget v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
