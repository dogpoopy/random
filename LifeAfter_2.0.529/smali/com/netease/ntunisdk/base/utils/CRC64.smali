.class public Lcom/netease/ntunisdk/base/utils/CRC64;
.super Ljava/lang/Object;
.source "CRC64.java"


# static fields
.field private static final crcTable:[J

.field private static final poly:J = -0x3693a86a2878f0beL


# instance fields
.field private crc:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x100

    new-array v0, v0, [J

    .line 16
    sput-object v0, Lcom/netease/ntunisdk/base/utils/CRC64;->crcTable:[J

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    :goto_0
    sget-object v2, Lcom/netease/ntunisdk/base/utils/CRC64;->crcTable:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2

    int-to-long v2, v1

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    const-wide/16 v5, 0x1

    and-long v7, v2, v5

    const/4 v9, 0x1

    cmp-long v10, v7, v5

    if-nez v10, :cond_0

    ushr-long/2addr v2, v9

    const-wide v5, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long/2addr v2, v5

    goto :goto_2

    :cond_0
    ushr-long/2addr v2, v9

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 30
    :cond_1
    sget-object v4, Lcom/netease/ntunisdk/base/utils/CRC64;->crcTable:[J

    aput-wide v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/netease/ntunisdk/base/utils/CRC64;->crc:J

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 4

    .line 53
    iget-wide v0, p0, Lcom/netease/ntunisdk/base/utils/CRC64;->crc:J

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public update(B)V
    .locals 5

    .line 38
    sget-object v0, Lcom/netease/ntunisdk/base/utils/CRC64;->crcTable:[J

    iget-wide v1, p0, Lcom/netease/ntunisdk/base/utils/CRC64;->crc:J

    long-to-int v3, v1

    xor-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    aget-wide v3, v0, p1

    const/16 p1, 0x8

    ushr-long v0, v1, p1

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/utils/CRC64;->crc:J

    return-void
.end method

.method public update([B)V
    .locals 2

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/netease/ntunisdk/base/utils/CRC64;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 6

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 49
    sget-object v0, Lcom/netease/ntunisdk/base/utils/CRC64;->crcTable:[J

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    iget-wide v2, p0, Lcom/netease/ntunisdk/base/utils/CRC64;->crc:J

    long-to-int v4, v2

    xor-int/2addr p2, v4

    and-int/lit16 p2, p2, 0xff

    aget-wide v4, v0, p2

    const/16 p2, 0x8

    ushr-long/2addr v2, p2

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netease/ntunisdk/base/utils/CRC64;->crc:J

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method
