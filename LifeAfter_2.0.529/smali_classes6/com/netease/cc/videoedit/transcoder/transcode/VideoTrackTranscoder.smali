.class public Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;
.super Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;
.source "VideoTrackTranscoder.java"


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDecoderOutputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderInputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;

.field private final mExtraRotation:I

.field private mFrameDropper:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;

.field private final mSourceRotation:I

.field private final mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;I)V
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    .line 58
    iput-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    .line 59
    invoke-interface {p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mSourceRotation:I

    .line 60
    iput p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mExtraRotation:I

    return-void
.end method


# virtual methods
.method protected onCodecsStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodec;)V
    .locals 2

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onCodecsStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodec;)V

    const-string p3, "frame-rate"

    .line 112
    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 113
    invoke-virtual {p2, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    .line 111
    invoke-static {v0, p3}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->newDropper(II)Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mFrameDropper:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;

    .line 114
    iput-object p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    .line 119
    iget p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mSourceRotation:I

    iget p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mExtraRotation:I

    add-int/2addr p3, p4

    rem-int/lit16 p3, p3, 0x168

    .line 120
    rem-int/lit16 p3, p3, 0xb4

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string p4, "width"

    .line 121
    invoke-virtual {p1, p4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const-string v1, "height"

    .line 122
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    if-eqz p3, :cond_1

    .line 124
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    :goto_1
    int-to-float p1, p1

    if-eqz p3, :cond_2

    .line 125
    invoke-virtual {p2, p4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, v0, p1

    if-lez p3, :cond_3

    div-float p1, v0, p1

    move p2, p1

    goto :goto_3

    :cond_3
    cmpg-float p3, v0, p1

    if-gez p3, :cond_4

    div-float/2addr p1, v0

    goto :goto_4

    :cond_4
    :goto_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 133
    :goto_4
    iget-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mDecoderOutputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-virtual {p3, p2, p1}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->setScale(FF)V

    return-void
.end method

.method protected onConfigureDecoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 4

    const-string v0, "rotation-degrees"

    .line 88
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    iget v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mSourceRotation:I

    if-ne v1, v3, :cond_1

    .line 99
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 103
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mDecoderOutputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    .line 104
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mDecoderOutputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mSourceRotation:I

    iget v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mExtraRotation:I

    add-int/2addr v1, v3

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->setRotation(I)V

    .line 105
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mDecoderOutputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected difference in rotation. DataSource:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mSourceRotation:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MediaFormat:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onConfigureEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 6

    const-string v0, "width"

    .line 69
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    .line 70
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 71
    iget v4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mExtraRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    .line 72
    :goto_1
    invoke-virtual {p1, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 73
    :goto_2
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 74
    invoke-super {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onConfigureEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    return-void
.end method

.method protected onDrainDecoder(Landroid/media/MediaCodec;ILjava/nio/ByteBuffer;JZ)V
    .locals 1

    const/4 p3, 0x0

    if-eqz p6, :cond_0

    .line 159
    iget-object p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p6, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-interface {p6, v0, p4, p5}, Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;->interpolate(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;J)J

    move-result-wide p4

    .line 163
    iget-object p6, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mFrameDropper:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;

    invoke-virtual {p6, p4, p5}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->shouldRenderFrame(J)Z

    move-result p6

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    .line 164
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 165
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mDecoderOutputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->drawFrame()V

    .line 166
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mEncoderInputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;

    invoke-virtual {p1, p4, p5}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->onFrame(J)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_0
    return-void
.end method

.method protected onFeedEncoder(Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onStartEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 2

    .line 79
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mEncoderInputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;

    .line 80
    invoke-super {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onStartEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mDecoderOutputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->release()V

    .line 140
    iput-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mDecoderOutputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mEncoderInputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->release()V

    .line 144
    iput-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mEncoderInputSurface:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;

    .line 146
    :cond_1
    invoke-super {p0}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->release()V

    .line 147
    iput-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    return-void
.end method
