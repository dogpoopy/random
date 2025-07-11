.class public Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;
.super Ljava/lang/Object;
.source "AudioEngine.java"


# static fields
.field private static final BYTES_PER_SHORT:I = 0x2

.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDecoder:Landroid/media/MediaCodec;

.field private final mDecoderChannels:I

.field private final mDecoderSampleRate:I

.field private final mEmptyBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncoder:Landroid/media/MediaCodec;

.field private final mEncoderChannels:I

.field private final mEncoderSampleRate:I

.field private mLastDecoderUs:J

.field private mLastEncoderUs:J

.field private final mPendingBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemixer:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

.field private final mResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

.field private final mStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

.field private mTempBuffer1:Ljava/nio/ShortBuffer;

.field private mTempBuffer2:Ljava/nio/ShortBuffer;

.field private final mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaFormat;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEmptyBuffers:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mPendingBuffers:Ljava/util/Queue;

    const-wide/high16 v0, -0x8000000000000000L

    .line 51
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastDecoderUs:J

    .line 52
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastEncoderUs:J

    .line 72
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoder:Landroid/media/MediaCodec;

    .line 73
    iput-object p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoder:Landroid/media/MediaCodec;

    .line 74
    iput-object p5, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    const-string p1, "sample-rate"

    .line 77
    invoke-virtual {p4, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoderSampleRate:I

    .line 78
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderSampleRate:I

    const-string p1, "channel-count"

    .line 81
    invoke-virtual {p4, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoderChannels:I

    .line 82
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderChannels:I

    .line 83
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoderChannels:I

    const-string p2, ") not supported."

    const/4 p3, 0x2

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Output channel count ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoderChannels:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    :goto_0
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderChannels:I

    if-eq p1, p4, :cond_3

    if-ne p1, p3, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Input channel count ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderChannels:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_3
    :goto_1
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderChannels:I

    iget p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoderChannels:I

    if-le p1, p2, :cond_4

    .line 92
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->DOWNMIX:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mRemixer:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    goto :goto_2

    :cond_4
    if-ge p1, p2, :cond_5

    .line 94
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->UPMIX:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mRemixer:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    goto :goto_2

    .line 96
    :cond_5
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->PASSTHROUGH:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mRemixer:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    .line 98
    :goto_2
    iput-object p6, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    .line 99
    iput-object p7, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    return-void
.end method

.method private ensureTempBuffer1(I)V
    .locals 3

    .line 295
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureTempBuffer1 - desiredSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer1:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 297
    :cond_0
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    const-string v1, "ensureTempBuffer1 - creating new buffer."

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;)V

    mul-int/lit8 v0, p1, 0x2

    .line 298
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 299
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer1:Ljava/nio/ShortBuffer;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer1:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 303
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer1:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private ensureTempBuffer2(I)V
    .locals 3

    .line 307
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureTempBuffer2 - desiredSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer2:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 309
    :cond_0
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    const-string v1, "ensureTempBuffer2 - creating new buffer."

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;)V

    mul-int/lit8 v0, p1, 0x2

    .line 310
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 311
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer2:Ljava/nio/ShortBuffer;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer2:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 315
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer2:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private hasPendingBuffers()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mPendingBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private process(Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;Ljava/nio/ShortBuffer;I)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 211
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    .line 212
    iget-object v3, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    .line 217
    iget-object v4, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTimeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    sget-object v5, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    iget-wide v6, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderTimestampUs:J

    invoke-interface {v4, v5, v6, v7}, Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;->interpolate(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;J)J

    move-result-wide v12

    .line 218
    iget-wide v4, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastDecoderUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 219
    iget-wide v4, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderTimestampUs:J

    iput-wide v4, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastDecoderUs:J

    .line 220
    iput-wide v12, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastEncoderUs:J

    .line 222
    :cond_0
    iget-wide v4, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderTimestampUs:J

    iget-wide v6, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastDecoderUs:J

    sub-long/2addr v4, v6

    .line 223
    iget-wide v6, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastEncoderUs:J

    sub-long v6, v12, v6

    .line 224
    iget-wide v8, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderTimestampUs:J

    iput-wide v8, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastDecoderUs:J

    .line 225
    iput-wide v12, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mLastEncoderUs:J

    long-to-double v8, v6

    long-to-double v10, v4

    .line 226
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    .line 227
    sget-object v10, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "process - time stretching - decoderDurationUs:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " encoderDeltaUs:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " stretchFactor:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    int-to-double v4, v3

    .line 231
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 234
    iget-object v7, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mRemixer:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    invoke-interface {v7, v6}, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->getRemixedSize(I)I

    move-result v6

    int-to-double v6, v6

    .line 238
    iget v10, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoderSampleRate:I

    int-to-double v10, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v10

    iget v10, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderSampleRate:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    if-le v6, v2, :cond_1

    const/4 v10, 0x1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_2

    int-to-double v10, v6

    .line 247
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v4

    int-to-double v4, v2

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int v7, v3, v4

    .line 249
    sget-object v4, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "process - overflowing! Reduction:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;)V

    .line 250
    iget-object v4, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    iget-object v5, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 252
    :cond_2
    iget-object v4, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    .line 253
    sget-object v5, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "process - totalInputSize:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " processedTotalInputSize:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " outputSize:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " inputSize:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    int-to-double v2, v4

    .line 259
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v0, v5}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->ensureTempBuffer1(I)V

    .line 260
    iget-object v5, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    iget-object v6, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    iget-object v8, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer1:Ljava/nio/ShortBuffer;

    iget v9, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderChannels:I

    invoke-interface {v5, v6, v8, v9}, Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;->stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V

    .line 261
    iget-object v5, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer1:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 264
    iget-object v5, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mRemixer:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {v5, v2}, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->getRemixedSize(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->ensureTempBuffer2(I)V

    .line 265
    iget-object v2, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mRemixer:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    iget-object v3, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer1:Ljava/nio/ShortBuffer;

    iget-object v5, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer2:Ljava/nio/ShortBuffer;

    invoke-interface {v2, v3, v5}, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V

    .line 266
    iget-object v2, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer2:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 269
    iget-object v2, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    iget-object v3, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mTempBuffer2:Ljava/nio/ShortBuffer;

    iget v5, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderSampleRate:I

    iget v6, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoderSampleRate:I

    iget v8, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderChannels:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v19, p2

    move/from16 v20, v6

    move/from16 v21, v8

    invoke-interface/range {v16 .. v21}, Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;->resample(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)V

    if-eqz v15, :cond_3

    .line 276
    iget-wide v2, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderTimestampUs:J

    iget v5, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderSampleRate:I

    iget v6, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoderChannels:I

    invoke-static {v4, v5, v6}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioConversions;->shortsToUs(III)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderTimestampUs:J

    .line 278
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    iget-object v1, v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 284
    :cond_3
    iget-object v8, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    .line 286
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    mul-int/lit8 v11, v1, 0x2

    const/4 v14, 0x0

    move/from16 v9, p3

    .line 284
    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return v15
.end method


# virtual methods
.method public drainDecoder(ILjava/nio/ByteBuffer;JZ)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mRemixer:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEmptyBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;-><init>()V

    .line 127
    :cond_0
    iput p1, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderBufferIndex:I

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x0

    .line 128
    :cond_1
    iput-wide p3, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderTimestampUs:J

    if-eqz p5, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    .line 130
    iput-boolean p5, v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->isEndOfStream:Z

    .line 131
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mPendingBuffers:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 124
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Buffer received before format!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public feedEncoder(Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;J)Z
    .locals 9

    .line 143
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->hasPendingBuffers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-gez v3, :cond_1

    return v1

    .line 149
    :cond_1
    invoke-virtual {p1, v3}, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 153
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mPendingBuffers:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;

    .line 157
    iget-boolean p3, p2, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->isEndOfStream:Z

    if-eqz p3, :cond_2

    .line 158
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return v1

    .line 167
    :cond_2
    invoke-direct {p0, p2, p1, v3}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->process(Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;Ljava/nio/ShortBuffer;I)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    return p3

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mPendingBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 177
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mEmptyBuffers:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioEngine;->mDecoder:Landroid/media/MediaCodec;

    iget p2, p2, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderBufferIndex:I

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3
.end method
