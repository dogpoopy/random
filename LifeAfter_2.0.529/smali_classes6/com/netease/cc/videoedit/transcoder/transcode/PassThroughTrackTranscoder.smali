.class public Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;
.super Ljava/lang/Object;
.source "PassThroughTrackTranscoder.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;


# instance fields
.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

.field private final mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

.field private final mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

.field private mIsEOS:Z

.field private final mOutputFormat:Landroid/media/MediaFormat;

.field private mOutputFormatSet:Z

.field private mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

.field private final mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;


# direct methods
.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mOutputFormatSet:Z

    .line 47
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    .line 48
    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    .line 49
    iput-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    .line 50
    invoke-interface {p1, p3}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    .line 51
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    if-eqz p1, :cond_0

    const-string p2, "max-input-size"

    .line 54
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 55
    new-instance p2, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    invoke-direct {p2}, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;-><init>()V

    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    .line 56
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    .line 57
    iput-object p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output format is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mIsEOS:Z

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setUp(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public transcode(Z)Z
    .locals 11

    .line 65
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mIsEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mOutputFormatSet:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    invoke-interface {v0, v3, v4}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->setTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)V

    .line 68
    iput-boolean v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mOutputFormatSet:Z

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->isDrained()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-interface {p1, v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-object p1, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 82
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    invoke-interface {p1, v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->readTrack(Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;)V

    .line 83
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-wide v3, v1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->timestampUs:J

    invoke-interface {p1, v0, v3, v4}, Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;->interpolate(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;J)J

    move-result-wide v8

    .line 84
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-boolean v10, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->isKeyFrame:Z

    .line 85
    iget-object v5, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget v7, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->bytes:I

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 86
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-object v1, v1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {p1, v0, v1, v3}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->writeTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return v2

    .line 71
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-object p1, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 72
    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 73
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mTrackType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mDataChunk:Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;

    iget-object v1, v1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {p1, v0, v1, v3}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->writeTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 74
    iput-boolean v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;->mIsEOS:Z

    return v2
.end method
