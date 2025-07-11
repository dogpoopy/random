.class Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;
.super Ljava/lang/Object;
.source "MediaFormatProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeMediaFormat(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 10

    .line 93
    invoke-interface {p1, p2}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->selectTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    :try_start_0
    const-string v0, "mime"

    .line 96
    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, p3, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 102
    new-instance p3, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    invoke-direct {p3, v0}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;-><init>(Landroid/media/MediaCodec;)V

    .line 103
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 104
    new-instance v9, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    invoke-direct {v9}, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;-><init>()V

    :goto_0
    if-nez v2, :cond_0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v9

    move-object v5, v0

    move-object v6, p3

    move-object v7, v8

    .line 107
    invoke-direct/range {v1 .. v7}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->decodeOnce(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;

    move-result-object v2

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->rewind()V

    return-object v2

    :catch_0
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Can\'t decode this track"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private decodeOnce(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;
    .locals 0

    .line 121
    invoke-direct {p0, p4, p5, p6}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->drainOnce(Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;

    move-result-object p6

    if-eqz p6, :cond_0

    return-object p6

    .line 123
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->feedOnce(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private drainOnce(Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;
    .locals 2

    const-wide/16 v0, 0x0

    .line 131
    invoke-virtual {p1, p3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 p2, -0x2

    if-eq v0, p2, :cond_1

    const/4 p2, -0x1

    const/4 p3, 0x0

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    .line 141
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_0
    return-object p3

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1

    .line 138
    :cond_2
    invoke-virtual {p2}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->onOutputBuffersChanged()V

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->drainOnce(Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method private feedOnce(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;)V
    .locals 9

    .line 151
    invoke-interface {p2, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 154
    invoke-virtual {p4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-gez v3, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p5, v3}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p3, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    .line 157
    invoke-interface {p2, p3}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->readTrack(Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;)V

    const/4 v4, 0x0

    .line 158
    iget v5, p3, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->bytes:I

    iget-wide v6, p3, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->timestampUs:J

    iget-boolean v8, p3, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->isKeyFrame:Z

    move-object v2, p4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void

    .line 152
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This should never happen!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isComplete(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)Z
    .locals 2

    .line 63
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v0, :cond_0

    const-string v0, "frame-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x18

    .line 67
    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    :cond_0
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider$1;->$SwitchMap$com$netease$cc$videoedit$transcoder$engine$TrackType:[I

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 71
    invoke-direct {p0, p2}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->isCompleteVideoFormat(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1

    .line 72
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 70
    :cond_2
    invoke-direct {p0, p2}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->isCompleteAudioFormat(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method

.method private isCompleteAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 1

    const-string v0, "mime"

    .line 84
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "channel-count"

    .line 85
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sample-rate"

    .line 86
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCompleteVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 1

    const-string v0, "mime"

    .line 77
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "height"

    .line 78
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "width"

    .line 79
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "frame-rate"

    .line 80
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method provideMediaFormat(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 1

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->isComplete(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->decodeMediaFormat(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object p1

    .line 46
    invoke-direct {p0, p2, p1}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->isComplete(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not get a complete format!"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " hasMimeType:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-eq p2, v0, :cond_1

    .line 53
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p2, v0, :cond_2

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " hasChannels:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "channel-count"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " hasSampleRate:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "sample-rate"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 50
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " hasWidth:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "width"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " hasHeight:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "height"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " hasFrameRate:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "frame-rate"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 57
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p1
.end method
