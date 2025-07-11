.class public Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;
.super Ljava/lang/Object;
.source "BlankAudioDataSource.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/source/DataSource;


# static fields
.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BIT_RATE:I = 0x158880

.field private static final CHANNEL_COUNT:I = 0x2

.field private static final PERIOD_SIZE:I = 0x2000

.field private static final PERIOD_TIME_SECONDS:D = 0.046439909297052155

.field private static final PERIOD_TIME_US:J = 0xb567L

.field private static final SAMPLES_PER_PERIOD:D = 2048.0

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final audioFormat:Landroid/media/MediaFormat;

.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private currentTimestampUs:J

.field private final durationUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->currentTimestampUs:J

    .line 39
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->durationUs:J

    const/16 p1, 0x2000

    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 41
    new-instance p2, Landroid/media/MediaFormat;

    invoke-direct {p2}, Landroid/media/MediaFormat;-><init>()V

    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    .line 42
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string v0, "mime"

    const-string v1, "audio/raw"

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string v0, "bitrate"

    const v1, 0x158880

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 44
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 45
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string v0, "max-input-size"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 46
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string p2, "sample-rate"

    const v0, 0xac44

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z
    .locals 1

    .line 84
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDurationUs()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->durationUs:J

    return-wide v0
.end method

.method public getLocation()[D
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReadUs()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->currentTimestampUs:J

    return-wide v0
.end method

.method public getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;
    .locals 1

    .line 68
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isDrained()Z
    .locals 5

    .line 105
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->currentTimestampUs:J

    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->getDurationUs()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readTrack(Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 90
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->byteBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->isKeyFrame:Z

    .line 92
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->currentTimestampUs:J

    iput-wide v0, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->timestampUs:J

    const/16 v2, 0x2000

    .line 93
    iput v2, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->bytes:I

    const-wide/32 v2, 0xb567

    add-long/2addr v0, v2

    .line 95
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->currentTimestampUs:J

    return-void
.end method

.method public releaseTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    .locals 0

    return-void
.end method

.method public rewind()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->currentTimestampUs:J

    return-void
.end method

.method public seekTo(J)J
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;->currentTimestampUs:J

    return-wide p1
.end method

.method public selectTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    .locals 0

    return-void
.end method
