.class Lcom/netease/cc/screen_record/codec/MicRecorder;
.super Ljava/lang/Object;
.source "MicRecorder.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/Encoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;,
        Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;
    }
.end annotation


# static fields
.field private static final LAST_FRAME_ID:I = -0x1

.field private static final MSG_DRAIN_OUTPUT:I = 0x2

.field private static final MSG_FEED_INPUT:I = 0x1

.field private static final MSG_PAUSE:I = 0x6

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_RELEASE:I = 0x5

.field private static final MSG_RELEASE_OUTPUT:I = 0x3

.field private static final MSG_RESUME:I = 0x7

.field private static final MSG_STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MicRecorder"

.field private static mGameVoiceBufferObj:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;


# instance fields
.field private mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

.field private mCallbackDelegate:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

.field private mChannelConfig:I

.field private mChannelsSampleRate:I

.field private final mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;

.field private mForceStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFormat:I

.field private mFramesUsCache:Landroid/util/SparseLongArray;

.field private mGameVoicePollRate:I

.field private mLastEncoderPauseTimeUs:J

.field private mLastPtsUs:J

.field private mLastValidPtsTs:J

.field private mMic:Landroid/media/AudioRecord;

.field private mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

.field private final mRecordThread:Landroid/os/HandlerThread;

.field private mSampleRate:I

.field private mSkipEncodeDurationUs:J

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;)V
    .locals 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 39
    iput v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFormat:I

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mForceStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v3, 0x0

    .line 46
    iput-wide v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    .line 47
    iput-wide v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastEncoderPauseTimeUs:J

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mGameVoicePollRate:I

    .line 384
    iput-wide v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastValidPtsTs:J

    .line 457
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    .line 463
    iput-wide v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastPtsUs:J

    .line 464
    iput-wide v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mStartTime:J

    .line 52
    new-instance v1, Lcom/netease/cc/screen_record/codec/AudioEncoder;

    invoke-direct {v1, p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;-><init>(Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;

    .line 53
    iget v1, p1, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->sampleRate:I

    iput v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSampleRate:I

    .line 54
    iget v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSampleRate:I

    iget v2, p1, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->channelCount:I

    mul-int v1, v1, v2

    iput v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mChannelsSampleRate:I

    .line 55
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v1

    const/16 v2, 0x10

    const-string v3, "MicRecorder"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in bitrate "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mChannelsSampleRate:I

    mul-int/lit8 v4, v4, 0x10

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iget p1, p1, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->channelCount:I

    if-ne p1, v0, :cond_1

    const/16 v2, 0xc

    :cond_1
    iput v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mChannelConfig:I

    .line 57
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic access$100(Lcom/netease/cc/screen_record/codec/MicRecorder;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSampleRate:I

    return p0
.end method

.method static synthetic access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastEncoderPauseTimeUs:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/netease/cc/screen_record/codec/MicRecorder;J)J
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastEncoderPauseTimeUs:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/netease/cc/screen_record/codec/MicRecorder;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastPtsUs:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/netease/cc/screen_record/codec/MicRecorder;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/netease/cc/screen_record/codec/MicRecorder;J)J
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/netease/cc/screen_record/codec/MicRecorder;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->feedAudioEncoderByGameVoice(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netease/cc/screen_record/codec/MicRecorder;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->feedAudioEncoder(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;
    .locals 1

    .line 31
    sget-object v0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mGameVoiceBufferObj:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netease/cc/screen_record/codec/MicRecorder;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mChannelConfig:I

    return p0
.end method

.method static synthetic access$400(Lcom/netease/cc/screen_record/codec/MicRecorder;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFormat:I

    return p0
.end method

.method static synthetic access$500(III)Landroid/media/AudioRecord;
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/MicRecorder;->createAudioRecord(III)Landroid/media/AudioRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mCallbackDelegate:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mMic:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$702(Lcom/netease/cc/screen_record/codec/MicRecorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mMic:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mForceStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private calculateFrameTimestamp(I)J
    .locals 12

    shr-int/lit8 p1, p1, 0x4

    .line 511
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const v0, 0xf4240

    mul-int v0, v0, p1

    .line 513
    iget v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mChannelsSampleRate:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    .line 514
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 516
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sub-long/2addr v5, v3

    .line 520
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    const/4 v7, -0x1

    invoke-virtual {v0, v7, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    cmp-long v0, v8, v1

    if-nez v0, :cond_1

    move-wide v8, v5

    .line 526
    :cond_1
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count samples pts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", time pts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", samples: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicRecorder"

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sub-long v0, v5, v8

    const/4 p1, 0x1

    shl-long v10, v3, p1

    cmp-long p1, v0, v10

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    move-wide v5, v8

    .line 533
    :goto_0
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    sub-long v0, v5, v0

    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastPtsUs:J

    .line 534
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    add-long/2addr v3, v5

    invoke-virtual {p1, v7, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 535
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    sub-long/2addr v5, v0

    return-wide v5
.end method

.method private calculateFrameTimestampByGameVoice(I)J
    .locals 14

    shr-int/lit8 p1, p1, 0x4

    .line 467
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const v0, 0xf4240

    mul-int v0, v0, p1

    .line 469
    iget v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mChannelsSampleRate:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    .line 470
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 472
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 473
    iget-wide v9, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_1

    .line 474
    iput-wide v5, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mStartTime:J

    :cond_1
    sub-long/2addr v5, v3

    .line 480
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    const/4 v9, -0x1

    invoke-virtual {v0, v9, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v10

    cmp-long v0, v10, v1

    if-nez v0, :cond_2

    move-wide v10, v5

    .line 487
    :cond_2
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v0

    const-string v1, "MicRecorder"

    if-eqz v0, :cond_3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count samples pts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v12, v10, v7

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", time pts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", samples: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-long/2addr v3, v10

    .line 497
    iget-wide v5, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastPtsUs:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    const-string p1, "audio pts decrease and out of order."

    .line 498
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_4
    iget-wide v5, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    sub-long v5, v10, v5

    iput-wide v5, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastPtsUs:J

    .line 502
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mFramesUsCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v9, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 503
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "audio output pts/ms "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    sub-long v2, v10, v2

    div-long/2addr v2, v7

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Elapsed time/ms "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    div-long/2addr v2, v7

    iget-wide v4, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mStartTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v7

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " and skipTime/ms "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    div-long/2addr v2, v7

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_5
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    sub-long/2addr v10, v0

    return-wide v10
.end method

.method private static createAudioRecord(III)Landroid/media/AudioRecord;
    .locals 14

    .line 539
    invoke-static/range {p0 .. p2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "MicRecorder"

    const/4 v6, 0x2

    if-gtz v0, :cond_0

    .line 541
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    .line 542
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const-string v2, "Bad arguments: getMinBufferSize(%d, %d, %d)"

    .line 541
    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 545
    :cond_0
    new-instance v13, Landroid/media/AudioRecord;

    const/4 v8, 0x1

    mul-int/lit8 v12, v0, 0x2

    move-object v7, v13

    move v9, p0

    move v10, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 551
    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 552
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    .line 553
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const-string v2, "Bad arguments to new AudioRecord %d, %d, %d"

    .line 552
    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v13
.end method

.method private feedAudioEncoder(I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v9, p1

    const/4 v0, 0x0

    if-ltz v9, :cond_6

    .line 415
    iget-object v2, v1, Lcom/netease/cc/screen_record/codec/MicRecorder;->mForceStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 416
    :cond_0
    iget-object v2, v1, Lcom/netease/cc/screen_record/codec/MicRecorder;->mMic:Landroid/media/AudioRecord;

    const-string v3, "maybe release"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecord;

    .line 417
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 418
    :goto_0
    iget-object v4, v1, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;

    invoke-virtual {v4, v9}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 419
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    const/16 v5, 0x800

    .line 420
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 421
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-nez v3, :cond_3

    .line 424
    invoke-virtual {v2, v4, v5}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move v12, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v12, 0x0

    :goto_2
    shl-int/lit8 v0, v12, 0x3

    .line 429
    invoke-direct {v1, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->calculateFrameTimestamp(I)J

    move-result-wide v13

    if-eqz v3, :cond_4

    const/4 v0, 0x4

    const/4 v15, 0x4

    goto :goto_3

    :cond_4
    const/4 v15, 0x1

    .line 436
    :goto_3
    iget-object v0, v1, Lcom/netease/cc/screen_record/codec/MicRecorder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v8, "MicRecorder"

    const-string v6, " "

    if-nez v0, :cond_5

    .line 438
    :try_start_0
    iget-object v2, v1, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v3, p1

    move v4, v11

    move v5, v12

    move-object v10, v6

    move-wide v6, v13

    move-object v1, v8

    move v8, v15

    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, v6

    move-object v1, v8

    .line 440
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueInputBuffer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v10, v6

    .line 446
    :try_start_2
    iget-object v2, v1, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v5, 0x0

    move/from16 v3, p1

    move v4, v11

    move-wide v6, v13

    move-object v1, v8

    move v8, v15

    :try_start_3
    invoke-virtual/range {v2 .. v8}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v8

    .line 448
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause state. queueInputBuffer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_7
    return v0
.end method

.method private feedAudioEncoderByGameVoice(I)V
    .locals 10

    if-ltz p1, :cond_2

    .line 387
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mForceStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/16 v1, 0x800

    .line 390
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 395
    sget-object v1, Lcom/netease/cc/screen_record/codec/MicRecorder;->mGameVoiceBufferObj:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    invoke-virtual {v1}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->getGameVoiceBufferData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v4, 0x800

    const/16 v0, 0x4000

    .line 397
    invoke-direct {p0, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->calculateFrameTimestampByGameVoice(I)J

    move-result-wide v8

    const/4 v7, 0x1

    .line 403
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move v2, p1

    move-wide v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->queueInputBuffer(IIIJI)V

    .line 405
    iput-wide v8, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastValidPtsTs:J

    goto :goto_0

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mLastValidPtsTs:J

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->queueInputBuffer(IIIJI)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mEncoder:Lcom/netease/cc/screen_record/codec/AudioEncoder;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Should prepare in HandlerThread"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    .line 78
    new-instance v1, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    invoke-direct {v1, v0, v2}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;-><init>(Landroid/os/Looper;Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mCallbackDelegate:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    .line 79
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;-><init>(Lcom/netease/cc/screen_record/codec/MicRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    .line 81
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    .line 82
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    return-void
.end method

.method public release()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 107
    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    .line 111
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mic Record Thread join timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicRecorder"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method releaseOutputBuffer(I)V
    .locals 3

    .line 119
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio encoder released output buffer index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicRecorder"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    return-void
.end method

.method public setCallback(Lcom/netease/cc/screen_record/codec/Encoder$Callback;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    return-void
.end method

.method public setGameVoiceObj(Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;)V
    .locals 0

    .line 62
    sput-object p1, Lcom/netease/cc/screen_record/codec/MicRecorder;->mGameVoiceBufferObj:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mCallbackDelegate:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mForceStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mRecordHandler:Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    :cond_1
    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder;->mSkipEncodeDurationUs:J

    return-void
.end method
