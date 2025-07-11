.class public abstract Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;
.super Ljava/lang/Object;
.source "BaseTrackTranscoder.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;


# static fields
.field private static final DRAIN_STATE_CONSUMED:I = 0x2

.field private static final DRAIN_STATE_NONE:I = 0x0

.field private static final DRAIN_STATE_SHOULD_RETRY_IMMEDIATELY:I = 0x1


# instance fields
.field private mActualOutputFormat:Landroid/media/MediaFormat;

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

.field private final mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

.field private final mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

.field private mDecoderStarted:Z

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

.field private mEncoderStarted:Z

.field private mIsDecoderEOS:Z

.field private mIsEncoderEOS:Z

.field private mIsExtractorEOS:Z

.field private final mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;


# direct methods
.method protected constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 51
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    .line 52
    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    .line 53
    iput-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    .line 54
    new-instance p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    invoke-direct {p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;-><init>()V

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    return-void
.end method

.method private drainDecoder(J)I
    .locals 10

    .line 235
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mIsDecoderEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 p1, -0x3

    const/4 p2, 0x1

    if-eq v5, p1, :cond_8

    const/4 p1, -0x2

    if-eq v5, p1, :cond_7

    const/4 p1, -0x1

    if-eq v5, p1, :cond_6

    .line 247
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v9, :cond_3

    .line 249
    iput-boolean p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mIsDecoderEOS:Z

    :cond_3
    if-nez v9, :cond_4

    if-eqz v1, :cond_5

    .line 251
    :cond_4
    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    .line 253
    invoke-virtual {p1, v5}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v3, p0

    .line 251
    invoke-virtual/range {v3 .. v9}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onDrainDecoder(Landroid/media/MediaCodec;ILjava/nio/ByteBuffer;JZ)V

    :cond_5
    const/4 p1, 0x2

    return p1

    :cond_6
    return v1

    .line 241
    :cond_7
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onDecoderOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :cond_8
    return p2
.end method

.method private drainEncoder(J)I
    .locals 8

    .line 262
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mIsEncoderEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    const/4 p2, -0x3

    const/4 v0, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, -0x2

    if-eq p1, p2, :cond_5

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 276
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_3

    .line 280
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    .line 281
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mIsEncoderEOS:Z

    .line 282
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 284
    :cond_1
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr p2, v2

    if-eqz p2, :cond_2

    .line 286
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v0

    .line 289
    :cond_2
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    invoke-virtual {v3, p1}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {p2, v0, v3, v4}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->writeTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 290
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v2

    .line 277
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not determine actual output format."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v1

    .line 269
    :cond_5
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onEncoderOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return v0

    .line 272
    :cond_6
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->onOutputBuffersChanged()V

    return v0
.end method

.method private feedDecoder(JZ)I
    .locals 9

    .line 199
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mIsExtractorEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->isDrained()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    iget-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-interface {p3, v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result p3

    if-nez p3, :cond_2

    return v1

    .line 215
    :cond_2
    iget-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p3, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-gez v3, :cond_3

    return v1

    .line 218
    :cond_3
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    invoke-virtual {p2, v3}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    .line 219
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    invoke-interface {p1, p2}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->readTrack(Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;)V

    .line 220
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget v5, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->bytes:I

    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-wide v6, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->timestampUs:J

    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-boolean v8, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->isKeyFrame:Z

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 p1, 0x2

    return p1

    .line 204
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p3, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-gez v3, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    .line 206
    iput-boolean p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mIsExtractorEOS:Z

    .line 207
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return v1
.end method

.method private feedEncoder(J)Z
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onFeedEncoder(Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;J)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final isFinished()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mIsEncoderEOS:Z

    return v0
.end method

.method protected onCodecsStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodec;)V
    .locals 0

    return-void
.end method

.method protected onConfigureDecoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p2, p1, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected onConfigureEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {p2, p1, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected onDecoderOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method protected abstract onDrainDecoder(Landroid/media/MediaCodec;ILjava/nio/ByteBuffer;JZ)V
.end method

.method protected onEncoderOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-nez p1, :cond_0

    .line 193
    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    .line 194
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    invoke-interface {p1, p2, v0}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->setTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)V

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Audio output format changed twice."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onFeedEncoder(Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;J)Z
.end method

.method protected onStartDecoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 0

    .line 119
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoderStarted:Z

    .line 121
    new-instance p1, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    invoke-direct {p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;-><init>(Landroid/media/MediaCodec;)V

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    return-void
.end method

.method protected onStartEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 0

    .line 97
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoderStarted:Z

    .line 99
    new-instance p1, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    invoke-direct {p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;-><init>(Landroid/media/MediaCodec;)V

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoderBuffers:Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;

    return-void
.end method

.method public release()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 143
    iget-boolean v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoderStarted:Z

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 145
    iput-boolean v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoderStarted:Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 148
    iput-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 151
    iget-boolean v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoderStarted:Z

    if-eqz v3, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 153
    iput-boolean v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoderStarted:Z

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 156
    iput-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    :cond_3
    return-void
.end method

.method public final setUp(Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "mime"

    .line 60
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, v1}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onConfigureEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    .line 65
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, v1}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onStartEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    .line 67
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-interface {v1, v2}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onConfigureDecoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    .line 77
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onStartDecoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    .line 78
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onCodecsStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodec;)V

    return-void

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input format is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final transcode(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    .line 164
    invoke-direct {p0, v2, v3}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->drainEncoder(J)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->drainDecoder(J)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eq v4, v0, :cond_0

    .line 171
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->feedEncoder(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 172
    :cond_2
    :goto_2
    invoke-direct {p0, v2, v3, p1}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->feedDecoder(JZ)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method
