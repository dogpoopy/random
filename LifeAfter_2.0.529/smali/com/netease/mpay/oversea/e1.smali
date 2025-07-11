.class public Lcom/netease/mpay/oversea/e1;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field private static volatile a:[B

.field private static volatile b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a()[B
    .locals 3

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/e1;->b:[B

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/netease/mpay/oversea/e1;->b:[B

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "page;1a8b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "iv"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "2192"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "3292"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "pt"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v1, "l1w0"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    const-string v1, "8fe2;view-"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v1, "view"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    :goto_2
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/oversea/e1;->b:[B

    .line 27
    sget-object v0, Lcom/netease/mpay/oversea/e1;->b:[B

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/ca;->b(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v0, 0x7f

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget-byte v2, p0, v1

    const v3, 0x3a0b567

    mul-int v2, v2, v3

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/netease/mpay/oversea/e1;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p0}, Lcom/netease/mpay/oversea/e1;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[B)[B
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/e1;->a([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[B[B)[B
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 29
    invoke-static {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/e1;->a([B[B[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[B[BLjava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 30
    array-length v1, p0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 32
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 33
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p3, 0x2

    if-nez p2, :cond_1

    .line 35
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v2, 0x10

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    aput-byte v3, v2, p3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    const/4 v4, 0x7

    aput-byte v3, v2, v4

    const/16 v4, 0x8

    aput-byte v3, v2, v4

    const/16 v4, 0x9

    aput-byte v3, v2, v4

    const/16 v4, 0xa

    aput-byte v3, v2, v4

    const/16 v4, 0xb

    aput-byte v3, v2, v4

    const/16 v4, 0xc

    aput-byte v3, v2, v4

    const/16 v4, 0xd

    aput-byte v3, v2, v4

    const/16 v4, 0xe

    aput-byte v3, v2, v4

    const/16 v4, 0xf

    aput-byte v3, v2, v4

    invoke-direct {p2, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, p3, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 37
    :cond_1
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, p3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 55
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 56
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 57
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 58
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception p0

    .line 59
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_5
    move-exception p0

    .line 60
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_6
    move-exception p0

    .line 61
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_7
    move-exception p0

    .line 62
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static b()[B
    .locals 4

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/e1;->b:[B

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/netease/mpay/oversea/e1;->a:[B

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "in"

    const-string v1, "out"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/oversea/e1;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/netease/mpay/oversea/e1;->a:[B

    .line 13
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/e1;->a:[B

    return-object v0
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/e1;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {}, Lcom/netease/mpay/oversea/e1;->a()[B

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/netease/mpay/oversea/e1;->a([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b([B[B)[B
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/e1;->b([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b([B[B[B)[B
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 14
    invoke-static {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/e1;->c([B[B[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static b([B[B[BLjava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 15
    array-length v1, p0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 18
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p3, 0x2

    if-nez p2, :cond_1

    .line 20
    invoke-virtual {p0, p3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 22
    :cond_1
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, p3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 41
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 43
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_5
    move-exception p0

    .line 45
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_6
    move-exception p0

    .line 46
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_7
    move-exception p0

    .line 47
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static c([BLjava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/e1;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p0}, Lcom/netease/mpay/oversea/e1;->b([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([B[B)[B
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/e1;->b()[B

    move-result-object v0

    const-string v1, "AES/ECB/PKCS7Padding"

    invoke-static {p1, p0, v0, v1}, Lcom/netease/mpay/oversea/e1;->b([B[B[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c([B[B[BLjava/lang/String;)[B
    .locals 2

    .line 3
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, p3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d([BLjava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/e1;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {}, Lcom/netease/mpay/oversea/e1;->a()[B

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/netease/mpay/oversea/e1;->b([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([B[B)[B
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/e1;->b()[B

    move-result-object v0

    const-string v1, "AES/ECB/PKCS7Padding"

    invoke-static {p1, p0, v0, v1}, Lcom/netease/mpay/oversea/e1;->c([B[B[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
