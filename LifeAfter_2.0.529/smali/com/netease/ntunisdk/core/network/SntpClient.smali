.class public Lcom/netease/ntunisdk/core/network/SntpClient;
.super Ljava/lang/Object;


# static fields
.field public static final NTP_SERVER:Ljava/lang/String; = "time.google.com"

.field public static final RESPONSE_INDEX_DISPERSION:I = 0x5

.field public static final RESPONSE_INDEX_ORIGINATE_TIME:I = 0x0

.field public static final RESPONSE_INDEX_RECEIVE_TIME:I = 0x1

.field public static final RESPONSE_INDEX_RESPONSE_TICKS:I = 0x7

.field public static final RESPONSE_INDEX_RESPONSE_TIME:I = 0x3

.field public static final RESPONSE_INDEX_ROOT_DELAY:I = 0x4

.field public static final RESPONSE_INDEX_SIZE:I = 0x8

.field public static final RESPONSE_INDEX_STRATUM:I = 0x6

.field public static final RESPONSE_INDEX_TRANSMIT_TIME:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)J
    .locals 4

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/core/network/SntpClient;->b([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/core/network/SntpClient;->b([BI)J

    move-result-wide p0

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long p0, p0, v2

    const-wide v2, 0x100000000L

    div-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static b([BI)J
    .locals 5

    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p1, v0, 0xff

    int-to-long v3, p1

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    and-int/lit16 p1, v1, 0xff

    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    and-int/lit16 p1, v2, 0xff

    int-to-long v0, p1

    const/16 p1, 0x8

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    add-long/2addr v3, p0

    return-wide v3
.end method


# virtual methods
.method public declared-synchronized requestNtpTime()J
    .locals 25

    monitor-enter p0

    const/16 v0, 0x30

    :try_start_0
    new-array v2, v0, [B

    const-string v3, "time.google.com"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    new-instance v4, Ljava/net/DatagramPacket;

    const/16 v5, 0x7b

    invoke-direct {v4, v2, v0, v3, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v3, 0x1b

    const/4 v5, 0x0

    aput-byte v3, v2, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v12, v6, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v12, v13}, Ljava/lang/Long;->signum(J)I

    mul-long v14, v12, v10

    sub-long v14, v6, v14

    const-wide v16, 0x83aa7e80L

    add-long v12, v12, v16

    const/16 v3, 0x18

    shr-long v0, v12, v3

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x28

    :try_start_1
    aput-byte v0, v2, v1

    const/16 v0, 0x29

    const/16 v18, 0x10

    move-object/from16 v19, v4

    shr-long v3, v12, v18

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    const/16 v0, 0x2a

    const/16 v3, 0x8

    shr-long v10, v12, v3

    long-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    const/16 v0, 0x2b

    shr-long v10, v12, v5

    long-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    const-wide v10, 0x100000000L

    mul-long v14, v14, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v14, v10

    const/16 v0, 0x2c

    const/16 v4, 0x18

    shr-long v10, v14, v4

    long-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    const/16 v0, 0x2d

    shr-long v10, v14, v18

    long-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    const/16 v0, 0x2e

    shr-long v10, v14, v3

    long-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    const/16 v0, 0x2f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v10, v10, v12

    double-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x7530

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-array v0, v3, [J

    new-instance v10, Ljava/net/DatagramPacket;

    const/16 v11, 0x30

    invoke-direct {v10, v2, v11}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v4, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, 0x7

    aput-wide v10, v0, v12

    const/16 v13, 0x18

    invoke-static {v2, v13}, Lcom/netease/ntunisdk/core/network/SntpClient;->a([BI)J

    move-result-wide v13

    const/16 v15, 0x20

    invoke-static {v2, v15}, Lcom/netease/ntunisdk/core/network/SntpClient;->a([BI)J

    move-result-wide v15

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/core/network/SntpClient;->a([BI)J

    move-result-wide v17

    sub-long/2addr v10, v8

    add-long/2addr v6, v10

    aput-wide v13, v0, v5

    const/4 v1, 0x1

    aput-wide v15, v0, v1

    const/4 v8, 0x2

    aput-wide v17, v0, v8

    const/4 v9, 0x3

    aput-wide v6, v0, v9

    const/4 v10, 0x4

    invoke-static {v2, v10}, Lcom/netease/ntunisdk/core/network/SntpClient;->b([BI)J

    move-result-wide v19

    aput-wide v19, v0, v10

    aget-wide v8, v0, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-double v8, v8

    const-wide v20, 0x4050624dd2f1a9fcL    # 65.536

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v8, v20

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    cmpl-double v24, v8, v22

    if-gtz v24, :cond_7

    :try_start_3
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/core/network/SntpClient;->b([BI)J

    move-result-wide v8

    const/4 v3, 0x5

    aput-wide v8, v0, v3

    aget-wide v8, v0, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v8, v20

    cmpl-double v20, v8, v22

    if-gtz v20, :cond_6

    :try_start_4
    aget-byte v8, v2, v5

    and-int/2addr v8, v12

    int-to-byte v8, v8

    if-eq v8, v10, :cond_1

    if-ne v8, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid NTP response: mode invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x6

    int-to-long v9, v3

    aput-wide v9, v0, v8

    if-lez v3, :cond_5

    const/16 v8, 0xf

    if-gt v3, v8, :cond_5

    aget-byte v2, v2, v5

    shr-int/lit8 v2, v2, 0x6

    const/4 v3, 0x3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    if-eq v2, v3, :cond_4

    sub-long/2addr v6, v13

    sub-long v17, v17, v15

    sub-long v6, v6, v17

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v6, 0x4087700000000000L    # 750.0

    cmpl-double v8, v2, v6

    if-gez v8, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    aget-wide v1, v0, v1

    aget-wide v5, v0, v5

    sub-long/2addr v1, v5

    const/4 v3, 0x2

    aget-wide v5, v0, v3

    const/4 v3, 0x3

    aget-wide v7, v0, v3

    sub-long/2addr v5, v7

    add-long/2addr v1, v5

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    aget-wide v5, v0, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-long/2addr v5, v1

    :try_start_5
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    return-wide v5

    :cond_2
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid NTP response: time elapsed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid NTP response: delay >= serverResponseDelayMax"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response from NTP server: unsynchronized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response from NTP server: mode stratum"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid NTP response: rootDispersion > rootDispersionMax"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid NTP response: rootDelay > rootDelayMax"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :goto_1
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_8

    :try_start_8
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method
