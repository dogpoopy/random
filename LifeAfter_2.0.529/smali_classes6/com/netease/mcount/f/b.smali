.class public Lcom/netease/mcount/f/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:[B

.field private static volatile b:[B

.field private static volatile c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/netease/mcount/f/b;->b(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/netease/mcount/f/a;->b([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v2, 0xa

    new-array v2, v2, [I

    const/4 v3, 0x4

    aput v3, v2, v1

    const/4 v4, -0x3

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    aput v6, v2, v7

    const/4 v6, 0x3

    aput v4, v2, v6

    aput v6, v2, v3

    const/4 v4, 0x5

    const/4 v6, -0x2

    aput v6, v2, v4

    const/4 v4, 0x6

    aput v5, v2, v4

    const/4 v4, 0x7

    aput v3, v2, v4

    const/16 v3, 0x8

    aput v7, v2, v3

    const/16 v3, 0x9

    aput v7, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    aget-char v4, p0, v1

    array-length v5, v2

    rem-int v5, v1, v5

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a()[B
    .locals 3

    sget-object v0, Lcom/netease/mcount/f/b;->a:[B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mcount/f/b;->a:[B

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "page;1a8b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "iv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "2192"

    goto :goto_0

    :cond_1
    const-string v1, "3292"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "l1w0"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    const-string v1, "8fe2;view-"

    goto :goto_2

    :cond_3
    const-string v1, "view"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/netease/mcount/f/b;->a:[B

    sget-object v0, Lcom/netease/mcount/f/b;->a:[B

    return-object v0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {}, Lcom/netease/mcount/f/b;->a()[B

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/netease/mcount/f/b;->a([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[B[B)[B
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/netease/mcount/f/b;->c()[B

    move-result-object p2

    invoke-direct {p0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/netease/mcount/f/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()Ljava/lang/String;
    .locals 13

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "cbc"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "ing"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "CS"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "a/"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string v6, "b/"

    aput-object v6, v0, v5

    const/4 v6, 0x6

    const-string v7, "c/"

    aput-object v7, v0, v6

    const/4 v7, 0x7

    const-string v8, "d/"

    aput-object v8, v0, v7

    const/16 v7, 0x8

    const-string v8, "e/"

    aput-object v8, v0, v7

    const/16 v7, 0x9

    const-string v8, "CB"

    aput-object v8, v0, v7

    const/16 v8, 0xa

    const-string v9, "EC"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    const-string v9, "s/"

    aput-object v9, v0, v8

    const/16 v9, 0xc

    const-string v10, "pk"

    aput-object v10, v0, v9

    const/16 v10, 0xd

    const-string v11, "add"

    aput-object v11, v0, v10

    const/16 v11, 0xe

    const-string v12, "sub"

    aput-object v12, v0, v11

    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xf

    aput-object v11, v0, v12

    sget-object v11, Lcom/netease/mcount/f/b;->c:Ljava/lang/String;

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v8, v0, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v7, v0, v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v6, v0, v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v6, v0, v9

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v0, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    aget-object v4, v0, v9

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, v0, v10

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, v0, v3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mcount/f/b;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/netease/mcount/f/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    throw p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {}, Lcom/netease/mcount/f/b;->a()[B

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/netease/mcount/f/b;->b([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B[B[B)[B
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/netease/mcount/f/b;->c()[B

    move-result-object p2

    invoke-direct {p0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/netease/mcount/f/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c()[B
    .locals 23

    sget-object v0, Lcom/netease/mcount/f/b;->b:[B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mcount/f/b;->b:[B

    return-object v0

    :cond_0
    const-string v0, "sdk1"

    const-string v1, "channel"

    const-string v2, "sdk3"

    const/16 v3, 0x10

    new-array v4, v3, [B

    const/16 v5, 0x1c

    new-array v5, v5, [B

    new-array v6, v3, [B

    fill-array-data v6, :array_0

    const/16 v7, 0x8

    new-array v8, v7, [B

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9, v8}, Ljava/util/Random;->nextBytes([B)V

    array-length v9, v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v8

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aget-byte v12, v6, v10

    sub-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v9

    array-length v9, v8

    const/4 v11, 0x1

    add-int/2addr v9, v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    int-to-byte v12, v12

    aget-byte v13, v6, v7

    sub-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v9

    array-length v9, v8

    const/4 v12, 0x2

    add-int/2addr v9, v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    int-to-byte v13, v13

    aget-byte v14, v6, v11

    sub-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v9

    array-length v9, v8

    const/4 v13, 0x3

    add-int/2addr v9, v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-byte v14, v14

    const/16 v15, 0x9

    aget-byte v16, v6, v15

    sub-int v14, v14, v16

    int-to-byte v14, v14

    aput-byte v14, v5, v9

    array-length v9, v8

    const/4 v14, 0x4

    add-int/2addr v9, v14

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aget-byte v17, v6, v12

    sub-int v3, v3, v17

    int-to-byte v3, v3

    aput-byte v3, v5, v9

    array-length v3, v8

    const/4 v9, 0x5

    add-int/2addr v3, v9

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v10, v10

    const/16 v18, 0xa

    aget-byte v19, v6, v18

    sub-int v10, v10, v19

    int-to-byte v10, v10

    aput-byte v10, v5, v3

    array-length v3, v8

    const/4 v10, 0x6

    add-int/2addr v3, v10

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aget-byte v20, v6, v13

    sub-int v11, v11, v20

    int-to-byte v11, v11

    aput-byte v11, v5, v3

    array-length v3, v8

    const/4 v11, 0x7

    add-int/2addr v3, v11

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    const/16 v21, 0xb

    aget-byte v22, v6, v21

    sub-int v11, v11, v22

    int-to-byte v11, v11

    aput-byte v11, v5, v3

    array-length v3, v8

    add-int/2addr v3, v7

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aget-byte v14, v6, v14

    sub-int/2addr v11, v14

    int-to-byte v11, v11

    aput-byte v11, v5, v3

    array-length v3, v8

    add-int/2addr v3, v15

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    const/16 v14, 0xc

    aget-byte v22, v6, v14

    sub-int v11, v11, v22

    int-to-byte v11, v11

    aput-byte v11, v5, v3

    array-length v3, v8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aget-byte v9, v6, v9

    sub-int/2addr v11, v9

    int-to-byte v9, v11

    aput-byte v9, v5, v3

    array-length v3, v8

    add-int/lit8 v3, v3, 0xb

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v9, v11

    const/16 v11, 0xd

    aget-byte v11, v6, v11

    sub-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    array-length v3, v8

    add-int/2addr v3, v14

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v9, v11

    aget-byte v10, v6, v10

    sub-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    array-length v3, v8

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    const/16 v10, 0xe

    aget-byte v10, v6, v10

    sub-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    array-length v3, v8

    add-int/lit8 v3, v3, 0xe

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    const/4 v10, 0x7

    aget-byte v11, v6, v10

    sub-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    array-length v3, v8

    const/16 v9, 0xf

    add-int/2addr v3, v9

    const-string v10, ";"

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v10, v10

    aget-byte v14, v6, v9

    sub-int/2addr v10, v14

    int-to-byte v10, v10

    aput-byte v10, v5, v3

    array-length v3, v8

    const/16 v10, 0x10

    add-int/2addr v3, v10

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    aget-byte v10, v6, v7

    sub-int/2addr v0, v10

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    array-length v0, v8

    add-int/lit8 v0, v0, 0x11

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    const/4 v10, 0x7

    aget-byte v10, v6, v10

    sub-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    array-length v0, v8

    add-int/lit8 v0, v0, 0x12

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aget-byte v3, v6, v15

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    array-length v0, v8

    add-int/lit8 v0, v0, 0x13

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    aget-byte v2, v6, v9

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    array-length v0, v4

    const/4 v1, 0x0

    invoke-static {v5, v7, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v4, Lcom/netease/mcount/f/b;->b:[B

    sget-object v0, Lcom/netease/mcount/f/b;->b:[B

    return-object v0

    :array_0
    .array-data 1
        0x73t
        0x6bt
        0x63t
        0x61t
        0x6et
        0x6ct
        0x64t
        0x33t
        0x64t
        0x31t
        0x68t
        0x6et
        0x65t
        0x73t
        0x6bt
        0x3bt
    .end array-data
.end method
