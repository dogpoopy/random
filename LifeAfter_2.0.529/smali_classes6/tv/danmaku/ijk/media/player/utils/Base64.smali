.class public Ltv/danmaku/ijk/media/player/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final DONT_BREAK_LINES:I = 0x8

.field private static final EQUALS_SIGN:I = 0x3d

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field protected static final MAX_LINE_LENGTH:I = 0x4c

.field protected static final NEW_LINE:I = 0xa

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final URL_SAFE:I = 0x10

.field protected static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 73
    fill-array-data v1, :array_0

    sput-object v1, Ltv/danmaku/ijk/media/player/utils/Base64;->_STANDARD_ALPHABET:[B

    const/16 v1, 0x7f

    new-array v2, v1, [B

    .line 92
    fill-array-data v2, :array_1

    sput-object v2, Ltv/danmaku/ijk/media/player/utils/Base64;->_STANDARD_DECODABET:[B

    new-array v2, v0, [B

    .line 135
    fill-array-data v2, :array_2

    sput-object v2, Ltv/danmaku/ijk/media/player/utils/Base64;->_URL_SAFE_ALPHABET:[B

    new-array v2, v1, [B

    .line 152
    fill-array-data v2, :array_3

    sput-object v2, Ltv/danmaku/ijk/media/player/utils/Base64;->_URL_SAFE_DECODABET:[B

    new-array v0, v0, [B

    .line 199
    fill-array-data v0, :array_4

    sput-object v0, Ltv/danmaku/ijk/media/player/utils/Base64;->_ORDERED_ALPHABET:[B

    new-array v0, v1, [B

    .line 218
    fill-array-data v0, :array_5

    sput-object v0, Ltv/danmaku/ijk/media/player/utils/Base64;->_ORDERED_DECODABET:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_4
    .array-data 1
        0x2dt
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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    :array_5
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
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
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 688
    invoke-static {p0, v0}, Ltv/danmaku/ijk/media/player/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 702
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    .line 710
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ltv/danmaku/ijk/media/player/utils/Base64;->decode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BIII)[B
    .locals 10

    .line 636
    invoke-static {p3}, Ltv/danmaku/ijk/media/player/utils/Base64;->getDecodabet(I)[B

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    const/4 v2, 0x4

    .line 638
    div-int/2addr v1, v2

    .line 639
    new-array v1, v1, [B

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    add-int v7, p1, p2

    if-ge v4, v7, :cond_4

    .line 648
    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    .line 649
    aget-byte v8, v0, v7

    const/4 v9, -0x5

    if-lt v8, v9, :cond_3

    const/4 v9, -0x1

    if-lt v8, v9, :cond_2

    add-int/lit8 v8, v5, 0x1

    .line 654
    aput-byte v7, v2, v5

    const/4 v5, 0x3

    if-le v8, v5, :cond_1

    .line 656
    invoke-static {v2, v3, v1, v6, p3}, Ltv/danmaku/ijk/media/player/utils/Base64;->decode4to3([BI[BII)I

    move-result v5

    add-int/2addr v6, v5

    const/16 v5, 0x3d

    if-ne v7, v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, v8

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 670
    :cond_3
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad Base64 input character at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p0, v4

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(decimal)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 675
    :cond_4
    :goto_2
    new-array p0, v6, [B

    .line 676
    invoke-static {v1, v3, p0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method protected static decode4to3([BI[BII)I
    .locals 7

    .line 563
    invoke-static {p4}, Ltv/danmaku/ijk/media/player/utils/Base64;->getDecodabet(I)[B

    move-result-object p4

    add-int/lit8 v0, p1, 0x2

    .line 566
    aget-byte v1, p0, v0

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 570
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 573
    aput-byte p0, p2, p3

    return v3

    :cond_0
    add-int/lit8 v1, p1, 0x3

    .line 578
    aget-byte v4, p0, v1

    const/4 v5, 0x2

    if-ne v4, v2, :cond_1

    .line 583
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v1

    aget-byte p0, p0, v0

    aget-byte p0, p4, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x6

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 587
    aput-byte p1, p2, p3

    add-int/2addr p3, v3

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 588
    aput-byte p0, p2, p3

    return v5

    .line 600
    :cond_1
    :try_start_0
    aget-byte v2, p0, p1

    aget-byte v2, p4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, p4, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    aget-byte v4, p0, v0

    aget-byte v4, p4, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    aget-byte v4, p0, v1

    aget-byte v4, p4, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    .line 605
    aput-byte v4, p2, p3

    add-int/lit8 v4, p3, 0x1

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    .line 606
    aput-byte v6, p2, v4

    add-int/2addr p3, v5

    int-to-byte v2, v2

    .line 607
    aput-byte v2, p2, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x3

    return p0

    .line 612
    :catch_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p0, p1

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, p0, p1

    aget-byte v5, p4, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v3

    aget-byte v3, p0, p1

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 616
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p3, p0, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p3, p0, v0

    aget-byte p3, p4, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 618
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p3, p0, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p0, v1

    aget-byte p0, p4, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 433
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static encode3to4([BII[BII)[B
    .locals 6

    .line 358
    invoke-static {p5}, Ltv/danmaku/ijk/media/player/utils/Base64;->getAlphabet(I)[B

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 359
    invoke-static/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/utils/Base64;->encode3to4([BII[BI[B)[B

    move-result-object p0

    return-object p0
.end method

.method protected static encode3to4([BII[BI[B)[B
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 395
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_2
    or-int p0, v1, v0

    const/16 p1, 0x3d

    const/4 v0, 0x3

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v0, :cond_3

    return-object p3

    :cond_3
    ushr-int/lit8 p1, p0, 0x12

    .line 401
    aget-byte p1, p5, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    .line 402
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    .line 403
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/2addr p4, v0

    and-int/lit8 p0, p0, 0x3f

    .line 404
    aget-byte p0, p5, p0

    aput-byte p0, p3, p4

    return-object p3

    :cond_4
    ushr-int/lit8 p2, p0, 0x12

    .line 408
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    .line 409
    aget-byte v1, p5, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 410
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/2addr p4, v0

    .line 411
    aput-byte p1, p3, p4

    return-object p3

    :cond_5
    ushr-int/lit8 p2, p0, 0x12

    .line 415
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    .line 416
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/lit8 p0, p4, 0x2

    .line 417
    aput-byte p1, p3, p0

    add-int/2addr p4, v0

    .line 418
    aput-byte p1, p3, p4

    return-object p3
.end method

.method protected static encode3to4([B[BII)[B
    .locals 6

    .line 315
    invoke-static {p3}, Ltv/danmaku/ijk/media/player/utils/Base64;->getAlphabet(I)[B

    move-result-object v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/utils/Base64;->encode3to4([BII[BI[B)[B

    return-object p0
.end method

.method protected static encode3to4([B[BI[B)[B
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move-object v5, p3

    .line 332
    invoke-static/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/utils/Base64;->encode3to4([BII[BI[B)[B

    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2

    .line 444
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ltv/danmaku/ijk/media/player/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2

    .line 464
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ltv/danmaku/ijk/media/player/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 477
    invoke-static {p0, p1, p2, v0}, Ltv/danmaku/ijk/media/player/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 16

    move/from16 v0, p2

    and-int/lit8 v1, p3, 0x8

    const/4 v7, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    mul-int/lit8 v1, v0, 0x4

    .line 502
    div-int/lit8 v1, v1, 0x3

    .line 503
    rem-int/lit8 v2, v0, 0x3

    const/4 v9, 0x4

    if-lez v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v2, v1

    const/16 v10, 0x4c

    if-eqz v8, :cond_2

    div-int/2addr v1, v10

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v2, v1

    new-array v11, v2, [B

    add-int/lit8 v12, v0, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v13, v12, :cond_4

    add-int v2, v13, p1

    const/4 v3, 0x3

    move-object/from16 v1, p0

    move-object v4, v11

    move v5, v14

    move/from16 v6, p3

    .line 511
    invoke-static/range {v1 .. v6}, Ltv/danmaku/ijk/media/player/utils/Base64;->encode3to4([BII[BII)[B

    add-int/2addr v15, v9

    if-eqz v8, :cond_3

    if-ne v15, v10, :cond_3

    add-int/lit8 v1, v14, 0x4

    const/16 v2, 0xa

    .line 515
    aput-byte v2, v11, v1

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    :cond_3
    add-int/lit8 v13, v13, 0x3

    add-int/2addr v14, v9

    goto :goto_3

    :cond_4
    if-ge v13, v0, :cond_5

    add-int v1, v13, p1

    sub-int v2, v0, v13

    move-object/from16 v0, p0

    move-object v3, v11

    move v4, v14

    move/from16 v5, p3

    .line 522
    invoke-static/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/utils/Base64;->encode3to4([BII[BII)[B

    add-int/lit8 v14, v14, 0x4

    .line 528
    :cond_5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v11, v7, v14, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 531
    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11, v7, v14}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method protected static final getAlphabet(I)[B
    .locals 2

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 268
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/Base64;->_URL_SAFE_ALPHABET:[B

    return-object p0

    :cond_0
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    .line 270
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/Base64;->_ORDERED_ALPHABET:[B

    return-object p0

    .line 272
    :cond_1
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/Base64;->_STANDARD_ALPHABET:[B

    return-object p0
.end method

.method protected static final getDecodabet(I)[B
    .locals 2

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 285
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/Base64;->_URL_SAFE_DECODABET:[B

    return-object p0

    :cond_0
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    .line 287
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/Base64;->_ORDERED_DECODABET:[B

    return-object p0

    .line 289
    :cond_1
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/Base64;->_STANDARD_DECODABET:[B

    return-object p0
.end method
