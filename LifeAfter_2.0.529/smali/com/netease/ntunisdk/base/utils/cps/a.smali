.class public final Lcom/netease/ntunisdk/base/utils/cps/a;
.super Ljava/lang/Object;
.source "TransUtil.java"


# direct methods
.method static a(BBBB)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method static a(Ljava/io/RandomAccessFile;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 10
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p0, 0x0

    .line 11
    aget-byte p0, v1, p0

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    const/4 v5, 0x4

    aget-byte v5, v1, v5

    const/4 v6, 0x5

    aget-byte v6, v1, v6

    const/4 v7, 0x6

    aget-byte v7, v1, v7

    const/4 v8, 0x7

    aget-byte v1, v1, v8

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p0, v0

    and-int/lit16 v0, v3, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    and-int/lit16 v0, v4, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    and-int/lit16 v0, v5, 0xff

    shl-int/lit8 v0, v0, 0x20

    or-int/2addr p0, v0

    and-int/lit16 v0, v6, 0xff

    shl-int/lit8 v0, v0, 0x28

    or-int/2addr p0, v0

    and-int/lit16 v0, v7, 0xff

    shl-int/lit8 v0, v0, 0x30

    or-int/2addr p0, v0

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x38

    or-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method static a(BB)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method
