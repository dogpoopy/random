.class public Lcom/netease/mpay/oversea/scan/server/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final INDEX_ORIGINATE_TIME:I = 0x18

.field private static final INDEX_RECEIVE_TIME:I = 0x20

.field private static final INDEX_ROOT_DELAY:I = 0x4

.field private static final INDEX_ROOT_DISPERSION:I = 0x8

.field private static final INDEX_TRANSMIT_TIME:I = 0x28

.field private static final INDEX_VERSION:I = 0x0

.field private static final NTP_MODE:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field public static final RESPONSE_INDEX_DISPERSION:I = 0x5

.field public static final RESPONSE_INDEX_ORIGINATE_TIME:I = 0x0

.field public static final RESPONSE_INDEX_RECEIVE_TIME:I = 0x1

.field public static final RESPONSE_INDEX_RESPONSE_TICKS:I = 0x7

.field public static final RESPONSE_INDEX_RESPONSE_TIME:I = 0x3

.field public static final RESPONSE_INDEX_ROOT_DELAY:I = 0x4

.field public static final RESPONSE_INDEX_SIZE:I = 0x8

.field public static final RESPONSE_INDEX_STRATUM:I = 0x6

.field public static final RESPONSE_INDEX_TRANSMIT_TIME:I = 0x2

.field private static ROOT_DELAY_MAX:F = 100.0f

.field private static ROOT_DISPERSION_MAX:F = 100.0f

.field private static SERVER_RESPONSE_DELAY_MAX:I = 0x2ee

.field private static UDP_SOCKET_TIMEOUT_MILLIS:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doubleMillis(J)D
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x4050624dd2f1a9fcL    # 65.536

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private getClockOffset([J)J
    .locals 6

    const/4 v0, 0x1

    .line 131
    aget-wide v0, p1, v0

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    sub-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private read([BI)J
    .locals 5

    .line 200
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 201
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    .line 202
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    .line 203
    aget-byte p1, p1, p2

    .line 205
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->ui(B)I

    move-result p2

    int-to-long v3, p2

    const/16 p2, 0x18

    shl-long/2addr v3, p2

    .line 206
    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->ui(B)I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x10

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    .line 207
    invoke-direct {p0, v2}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->ui(B)I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x8

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    .line 208
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->ui(B)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private readTimeStamp([BI)J
    .locals 4

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->read([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->read([BI)J

    move-result-wide p1

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long p1, p1, v2

    const-wide v2, 0x100000000L

    .line 190
    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private sntpTime([J)J
    .locals 4

    .line 136
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->getClockOffset([J)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 137
    aget-wide v2, p1, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private ui(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private writeTimeStamp([BIJ)V
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 158
    div-long v2, p3, v0

    mul-long v4, v2, v0

    sub-long/2addr p3, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v6, v2, v5

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 166
    aput-byte v6, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v6, 0x10

    shr-long v7, v2, v6

    long-to-int v8, v7

    int-to-byte v7, v8

    .line 167
    aput-byte v7, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v7, 0x8

    shr-long v8, v2, v7

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 168
    aput-byte v8, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/4 v8, 0x0

    shr-long/2addr v2, v8

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 169
    aput-byte v2, p1, v4

    const-wide v2, 0x100000000L

    mul-long p3, p3, v2

    .line 171
    div-long/2addr p3, v0

    add-int/lit8 v0, p2, 0x1

    shr-long v1, p3, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 174
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-long v1, p3, v6

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 175
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-long/2addr p3, v7

    long-to-int p4, p3

    int-to-byte p3, p4

    .line 176
    aput-byte p3, p1, p2

    .line 179
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double p2, p2, v1

    double-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-void
.end method

.method private writeVersion([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1b

    .line 148
    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method public declared-synchronized requestNtpTime(Ljava/lang/String;)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v2, 0x0

    const/16 v0, 0x30

    :try_start_0
    new-array v0, v0, [B

    .line 51
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 52
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v0

    const/16 v6, 0x7b

    invoke-direct {v4, v0, v5, v3, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 53
    invoke-direct {v1, v0}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->writeVersion([B)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/16 v3, 0x28

    .line 56
    invoke-direct {v1, v0, v3, v5, v6}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 58
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 59
    :try_start_1
    sget v2, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->UDP_SOCKET_TIMEOUT_MILLIS:I

    invoke-virtual {v9, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 60
    invoke-virtual {v9, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v2, 0x8

    new-array v4, v2, [J

    .line 63
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v11, v0

    invoke-direct {v10, v0, v11}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 64
    invoke-virtual {v9, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, 0x7

    aput-wide v10, v4, v12

    const/16 v13, 0x18

    .line 67
    invoke-direct {v1, v0, v13}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v13

    const/16 v15, 0x20

    .line 68
    invoke-direct {v1, v0, v15}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v15

    .line 69
    invoke-direct {v1, v0, v3}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v17

    sub-long/2addr v10, v7

    add-long/2addr v5, v10

    const/4 v3, 0x0

    aput-wide v13, v4, v3

    const/4 v7, 0x1

    aput-wide v15, v4, v7

    const/4 v8, 0x2

    aput-wide v17, v4, v8

    const/4 v8, 0x3

    aput-wide v5, v4, v8

    const/4 v10, 0x4

    .line 77
    invoke-direct {v1, v0, v10}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->read([BI)J

    move-result-wide v19

    aput-wide v19, v4, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p1, v9

    .line 78
    :try_start_2
    aget-wide v8, v4, v10

    invoke-direct {v1, v8, v9}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->doubleMillis(J)D

    move-result-wide v8

    .line 79
    sget v11, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->ROOT_DELAY_MAX:F

    float-to-double v10, v11

    cmpl-double v21, v8, v10

    if-gtz v21, :cond_7

    .line 84
    invoke-direct {v1, v0, v2}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->read([BI)J

    move-result-wide v8

    const/4 v2, 0x5

    aput-wide v8, v4, v2

    .line 85
    aget-wide v8, v4, v2

    invoke-direct {v1, v8, v9}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->doubleMillis(J)D

    move-result-wide v8

    .line 86
    sget v10, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->ROOT_DISPERSION_MAX:F

    float-to-double v10, v10

    cmpl-double v21, v8, v10

    if-gtz v21, :cond_6

    .line 91
    aget-byte v8, v0, v3

    and-int/2addr v8, v12

    int-to-byte v8, v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    if-ne v8, v2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: mode invalid"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    :goto_0
    aget-byte v2, v0, v7

    and-int/lit16 v2, v2, 0xff

    int-to-long v8, v2

    const/4 v10, 0x6

    aput-wide v8, v4, v10

    if-lt v2, v7, :cond_5

    const/16 v7, 0xf

    if-gt v2, v7, :cond_5

    .line 102
    aget-byte v0, v0, v3

    shr-int/2addr v0, v10

    const/4 v2, 0x3

    and-int/2addr v0, v2

    int-to-byte v0, v0

    if-eq v0, v2, :cond_4

    sub-long/2addr v5, v13

    sub-long v17, v17, v15

    sub-long v5, v5, v17

    .line 107
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    .line 108
    sget v0, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->SERVER_RESPONSE_DELAY_MAX:I

    int-to-double v5, v0

    cmpl-double v0, v2, v5

    if-gez v0, :cond_3

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v5, 0x2710

    cmp-long v0, v2, v5

    if-gez v0, :cond_2

    .line 117
    invoke-direct {v1, v4}, Lcom/netease/mpay/oversea/scan/server/net/SntpClient;->sntpTime([J)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 117
    monitor-exit p0

    return-wide v2

    .line 115
    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: time elapsed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: delay >= serverResponseDelayMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid response from NTP server: unsynchronized"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid response from NTP server: mode stratum"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: rootDispersion > rootDispersionMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: rootDelay > rootDelayMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 p1, v9

    :goto_1
    move-object/from16 v2, p1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 p1, v9

    :goto_2
    move-object/from16 v2, p1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 119
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    if-eqz v2, :cond_8

    .line 122
    :try_start_6
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 124
    :cond_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method
