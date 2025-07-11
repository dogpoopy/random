.class public Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;
.super Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;
.source "AudioTrackTranscoder.java"


# instance fields
.field private mAudioEngine:Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;

.field private mAudioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

.field private mAudioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderOutputFormat:Landroid/media/MediaFormat;

.field private mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;


# direct methods
.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    .line 35
    iput-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    .line 36
    iput-object p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    .line 37
    iput-object p5, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    return-void
.end method


# virtual methods
.method protected onCodecsStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodec;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onCodecsStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodec;)V

    .line 43
    iput-object p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    .line 44
    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mEncoderOutputFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method protected onDecoderOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9

    .line 55
    invoke-super {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/transcode/BaseTrackTranscoder;->onDecoderOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 56
    new-instance v8, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mEncoderOutputFormat:Landroid/media/MediaFormat;

    iget-object v5, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    iget-object v6, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    iget-object v7, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaFormat;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;)V

    iput-object v8, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioEngine:Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    .line 62
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mEncoderOutputFormat:Landroid/media/MediaFormat;

    .line 63
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    .line 64
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    .line 65
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    return-void
.end method

.method protected onDrainDecoder(Landroid/media/MediaCodec;ILjava/nio/ByteBuffer;JZ)V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioEngine:Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;

    move v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->drainDecoder(ILjava/nio/ByteBuffer;JZ)V

    return-void
.end method

.method protected onFeedEncoder(Landroid/media/MediaCodec;Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;J)Z
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;->mAudioEngine:Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->feedEncoder(Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;J)Z

    move-result p1

    return p1
.end method
