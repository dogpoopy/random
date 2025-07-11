.class public Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;
.super Ljava/lang/Object;
.source "RawDataSourceProvider.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mMediaBytes:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IJKMEDIA-RDS"

    .line 11
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->TAG:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method private readBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 62
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 53
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mMediaBytes:[B

    return-void
.end method

.method public getSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    .line 41
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mMediaBytes:[B

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 43
    invoke-direct {p0, v2}, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mMediaBytes:[B

    :cond_0
    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6

    .line 20
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mMediaBytes:[B

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, p4

    const/4 p1, 0x1

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;->mMediaBytes:[B

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p1

    const-string p1, "position(%d) >= mediaBytesLength(%d)"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "IJKMEDIA-RDS"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v1, p5

    add-long/2addr v1, p1

    .line 26
    array-length v3, v0

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    array-length p5, v0

    int-to-long v1, p5

    sub-long/2addr v1, p1

    long-to-int p5, v1

    .line 30
    array-length v1, p3

    if-le p5, v1, :cond_2

    .line 31
    array-length p5, p3

    :cond_2
    :goto_0
    long-to-int p2, p1

    .line 33
    invoke-static {v0, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p5
.end method
