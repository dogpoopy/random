.class public Lcom/netease/cc/screen_record/codec/ScreenRecorder;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;,
        Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;,
        Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;
    }
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1

.field private static final MSG_COVER_RESULT:I = 0x3

.field private static final MSG_ERROR:I = 0x2

.field private static final MSG_START:I = 0x0

.field private static final MSG_STOP:I = 0x1

.field private static final STOP_WITH_EOS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[CCR]"


# instance fields
.field private mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

.field private mAudioOutputFormat:Landroid/media/MediaFormat;

.field private mAudioPtsOffset:J

.field private mAudioTrackIndex:I

.field private mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCacheBuffer:Ljava/lang/Object;

.field private mCacheRecordDuration:I

.field private mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

.field private mDstPath:Ljava/lang/String;

.field private mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFps:I

.field private mFrameInterval:F

.field private mHandler:Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

.field private mHeight:I

.field private mIsMediaProjection:Z

.field private mIsRecordCache:Ljava/lang/Boolean;

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mPendingAudioEncoderBufferIndices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAudioEncoderBufferInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

.field private mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

.field private mVideoEncoder:Lcom/netease/cc/screen_record/codec/VideoEncoder;

.field private mVideoOutputFormat:Landroid/media/MediaFormat;

.field private mVideoPtsOffset:J

.field private mVideoTrackIndex:I

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mWidth:I

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;IIILandroid/graphics/RectF;Landroid/media/projection/MediaProjection;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p9

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v14, 0x0

    .line 56
    iput-object v14, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    iput-object v14, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioOutputFormat:Landroid/media/MediaFormat;

    const/4 v3, -0x1

    .line 57
    iput v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    iput v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    const/4 v13, 0x0

    .line 59
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-boolean v13, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    .line 61
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v4, Lcom/netease/cc/screen_record/codec/ScreenRecorder$1;

    invoke-direct {v4, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$1;-><init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 76
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    .line 77
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferIndices:Ljava/util/LinkedList;

    .line 78
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferInfos:Ljava/util/LinkedList;

    .line 79
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    .line 80
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    .line 81
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    .line 82
    iput-object v14, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    .line 83
    iput-object v12, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRecordCache:Ljava/lang/Boolean;

    .line 84
    iput v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheRecordDuration:I

    const/4 v11, 0x1

    .line 87
    iput-boolean v11, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsMediaProjection:Z

    .line 88
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheBuffer:Ljava/lang/Object;

    .line 116
    iget v3, v1, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->width:I

    iput v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mWidth:I

    .line 117
    iget v3, v1, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->height:I

    iput v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mHeight:I

    move-object/from16 v10, p7

    .line 118
    iput-object v10, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    move-object/from16 v3, p8

    .line 119
    iput-object v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mDstPath:Ljava/lang/String;

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->getFps()I

    move-result v3

    if-gtz v3, :cond_0

    const/16 v3, 0x14

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->getFps()I

    move-result v3

    :goto_0
    iput v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mFps:I

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->getIFrameInterval()F

    move-result v3

    iput v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mFrameInterval:F

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->getBitrate()I

    move-result v9

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========screen recorder fps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mFps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mFrameInterval:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "[CCR]"

    invoke-static {v8, v3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    iget v6, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mWidth:I

    iget v5, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mHeight:I

    iget v4, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mFps:I

    iget v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mFrameInterval:F

    const/16 v16, 0x1

    move/from16 v17, v3

    move-object v3, v7

    move/from16 v18, v4

    move/from16 v4, p3

    move/from16 v19, v5

    move/from16 v5, p4

    move-object/from16 v20, v7

    move/from16 v7, v19

    move-object/from16 v21, v8

    move/from16 v8, v18

    move/from16 v10, v17

    const/16 v18, 0x1

    move/from16 v11, v16

    move-object/from16 v22, v12

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    invoke-direct/range {v3 .. v17}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;-><init>(IIIIIIFIILandroid/graphics/RectF;Landroid/media/projection/MediaProjection;Lorg/json/JSONObject;ZZ)V

    move-object/from16 v3, v20

    iput-object v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    .line 125
    new-instance v3, Lcom/netease/cc/screen_record/codec/VideoEncoder;

    invoke-direct {v3, v1}, Lcom/netease/cc/screen_record/codec/VideoEncoder;-><init>(Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;)V

    iput-object v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoEncoder:Lcom/netease/cc/screen_record/codec/VideoEncoder;

    .line 126
    iget-object v1, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    iget-object v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoEncoder:Lcom/netease/cc/screen_record/codec/VideoEncoder;

    invoke-virtual {v1, v3}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setFrameListener(Lcom/netease/cc/screen_record/codec/encoder/FrameListener;)V

    const/4 v1, 0x0

    .line 127
    iput-object v1, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-nez v2, :cond_1

    move-object v14, v1

    goto :goto_1

    .line 128
    :cond_1
    new-instance v14, Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-direct {v14, v2}, Lcom/netease/cc/screen_record/codec/MicRecorder;-><init>(Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;)V

    :goto_1
    iput-object v14, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    xor-int/lit8 v1, p11, 0x1

    .line 129
    iput-boolean v1, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsMediaProjection:Z

    move-object/from16 v1, p9

    if-eqz v1, :cond_3

    const-string v2, "cache_record_mode"

    const/4 v3, 0x0

    .line 131
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRecordCache:Ljava/lang/Boolean;

    .line 132
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheRecordDuration:I

    goto :goto_3

    :cond_3
    move-object/from16 v1, v22

    .line 134
    iput-object v1, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRecordCache:Ljava/lang/Boolean;

    .line 137
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cache_record] record cache video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRecordCache:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheRecordDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-static {v2, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->record()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCallback:Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mHandler:Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Landroid/media/MediaFormat;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->resetVideoOutputFormat(Landroid/media/MediaFormat;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->startMuxerIfReady()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netease/cc/screen_record/codec/ScreenRecorder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->muxAudio(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netease/cc/screen_record/codec/ScreenRecorder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->cacheAudio(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Landroid/media/MediaFormat;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->resetAudioOutputFormat(Landroid/media/MediaFormat;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->startMuxerNoRecordingAudio()V

    return-void
.end method

.method static synthetic access$1702(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->stopEncoders()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->signalEndOfStream()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)I
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->muxCachingRecord()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->release()V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Ljava/lang/Boolean;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRecordCache:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/cc/screen_record/codec/ScreenRecorder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->muxVideo(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/cc/screen_record/codec/ScreenRecorder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->cacheVideo(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private cacheAudio(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 361
    iget-object v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const-string v4, "[CCR]"

    if-nez v3, :cond_0

    const-string v1, "cacheAudio: Already stopped!"

    .line 362
    invoke-static {v4, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 365
    :cond_0
    iget-object v3, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v3, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 366
    iget-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    .line 367
    invoke-direct {v0, v2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->resetAudioPts(Landroid/media/MediaCodec$BufferInfo;)V

    .line 369
    :cond_1
    new-instance v5, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    invoke-direct {v5, v0, v3, v2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;-><init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 370
    iget-object v2, v5, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 374
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "[cache_record] Ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v4, v2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_2
    iget-object v2, v5, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 377
    :cond_3
    iget-object v2, v5, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_4

    .line 378
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_4
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v2, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->releaseOutputBuffer(I)V

    .line 382
    iget-object v1, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    return-void

    .line 384
    :cond_5
    iget-object v5, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-gt v5, v2, :cond_6

    return-void

    .line 386
    :cond_6
    iget-object v6, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v6, v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v8, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    .line 387
    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v8, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v6, v8

    .line 388
    iget v8, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheRecordDuration:I

    mul-int/lit16 v8, v8, 0x3e8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    sub-long v8, v6, v8

    .line 389
    iget-object v10, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v10, v10, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v12, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    .line 390
    invoke-virtual {v12, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v12, v12, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v10, v12

    .line 391
    iget v12, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheRecordDuration:I

    mul-int/lit16 v12, v12, 0x3e8

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    sub-long v12, v10, v12

    const v14, 0x49742400    # 1000000.0f

    .line 392
    iget v15, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mFrameInterval:F

    div-float/2addr v14, v15

    float-to-long v14, v14

    .line 393
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v16

    const-string v3, " redundantUs "

    const-string v2, " durationUs "

    if-eqz v16, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v14

    const-string v14, "[cache_record]audio size "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-wide/from16 v16, v14

    .line 395
    :goto_0
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[cache_record]video size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " GopDurationUs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " frameInterval "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    iget v5, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mFrameInterval:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object/from16 v3, p0

    move-wide/from16 v1, v16

    :goto_1
    const-wide/16 v5, 0x2

    .line 397
    div-long v14, v1, v5

    cmp-long v0, v8, v14

    if-lez v0, :cond_c

    cmp-long v0, v12, v14

    if-lez v0, :cond_c

    .line 398
    :cond_9
    iget-object v0, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 399
    iget-object v0, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 400
    iget-object v0, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    .line 401
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    .line 402
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cache_record] reach target key video frame with pts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_a
    iget-object v0, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 408
    :goto_2
    iget-object v0, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    .line 409
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_b

    .line 410
    iget-object v0, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_2

    .line 412
    :cond_b
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[cache_record] reach target key audio frame with pts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v1, v1, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private cacheVideo(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "[CCR]"

    const-string p2, "cacheVideo: Already stopped!"

    .line 315
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 318
    :cond_0
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 319
    invoke-direct {p0, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->resetVideoPts(Landroid/media/MediaCodec$BufferInfo;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoEncoder:Lcom/netease/cc/screen_record/codec/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/VideoEncoder;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    invoke-direct {v1, p0, v0, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;-><init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 323
    iget-object p2, v1, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    .line 327
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "[CCR]"

    const-string v0, "Ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {p2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_2
    iget-object p2, v1, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    iput v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 330
    :cond_3
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheBuffer:Ljava/lang/Object;

    monitor-enter p2

    .line 331
    :try_start_0
    iget-object v0, v1, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoEncoder:Lcom/netease/cc/screen_record/codec/VideoEncoder;

    invoke-virtual {p2, p1}, Lcom/netease/cc/screen_record/codec/VideoEncoder;->releaseOutputBuffer(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 334
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private muxAudio(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "[CCR]"

    if-nez v0, :cond_0

    const-string p1, "muxAudio: Already stopped!"

    .line 340
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_0
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 350
    iget v3, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    invoke-direct {p0, v3, p2, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->writeSampleData(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 351
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->releaseOutputBuffer(I)V

    .line 352
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 353
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Stop encoder and muxer, since the buffer has been marked with EOS"

    .line 354
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_2
    iput v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    const/4 p1, 0x1

    .line 356
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->signalStop(Z)V

    :cond_3
    return-void

    .line 344
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private muxCachingRecord()I
    .locals 14

    .line 824
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRecordCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    const/4 v2, -0x1

    const-string v3, "[CCR]"

    if-nez v0, :cond_1

    const-string v0, "[cache_record] video output format is null."

    .line 826
    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_d

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v0, v4, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 835
    :goto_0
    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 836
    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v5, v5, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 838
    :goto_1
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 839
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v6, v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 842
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[cache_record] total size of video and audio "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    div-int/lit16 v4, v4, 0x400

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " MB (Duration: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheRecordDuration:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sec)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[cache_record] audio pts ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v4, v4, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " -- "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    .line 844
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v5, v5, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[cache_record] video pts ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v6, v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    .line 846
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v4, v4, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 849
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, v6, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 850
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    iput v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    .line 851
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioOutputFormat:Landroid/media/MediaFormat;

    if-eqz v6, :cond_6

    .line 852
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-nez v6, :cond_5

    const/4 v6, -0x1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    :goto_2
    iput v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    goto :goto_3

    .line 854
    :cond_6
    iput v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    .line 856
    :goto_3
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 859
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 860
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v6, v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 861
    :goto_4
    iget-object v8, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    if-eqz v8, :cond_7

    .line 862
    iget-object v9, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    iget-object v10, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 863
    iget-object v9, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    iget-object v10, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v11, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 864
    iget-object v9, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v10, v6

    iput-wide v10, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 865
    iget v9, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    iget-object v10, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    iget-object v8, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v9, v10, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_4

    :cond_7
    const-string v6, "[cache_record] mux video end."

    .line 867
    invoke-static {v3, v6}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_8
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    if-eq v6, v2, :cond_a

    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 870
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    iget-object v6, v6, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 871
    :goto_5
    iget-object v8, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;

    if-eqz v8, :cond_9

    .line 872
    iget-object v9, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    iget-object v10, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 873
    iget-object v9, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    iget-object v10, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v11, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 874
    iget-object v9, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v10, v6

    iput-wide v10, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 875
    iget v9, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    iget-object v10, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    iget-object v8, v8, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v9, v10, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_5

    :cond_9
    const-string v6, "[cache_record] mux audio end."

    .line 877
    invoke-static {v3, v6}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_a
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 880
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    move-object v6, v12

    .line 881
    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    const-string v6, "[cache_record] Signal EOS to muxer "

    .line 882
    invoke-static {v3, v6}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eq v6, v2, :cond_b

    .line 885
    :try_start_1
    iget v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    invoke-virtual {v0, v6, v13, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 887
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cache_record] writeSampleData video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    return v0

    .line 892
    :cond_b
    :goto_6
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eq v6, v2, :cond_c

    .line 894
    :try_start_3
    iget v6, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    invoke-virtual {v0, v6, v13, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 896
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cache_record] writeSampleData audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    return v0

    .line 901
    :cond_c
    :goto_7
    iput v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    .line 902
    iput v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 904
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 905
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cache_record] Mux cache record costs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_2
    move-exception v0

    .line 907
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cache_record] stop muxer catch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v0, -0x5

    return v0

    :catch_3
    move-exception v0

    .line 913
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cache_record] mux caching record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x6

    return v0

    :cond_d
    :goto_8
    const-string v0, "[cache_record] video or audio size too few."

    .line 830
    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0
.end method

.method private muxVideo(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "[CCR]"

    if-nez v0, :cond_0

    const-string p1, "muxVideo: Already stopped!"

    .line 293
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoEncoder:Lcom/netease/cc/screen_record/codec/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/VideoEncoder;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 302
    iget v3, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    invoke-direct {p0, v3, p2, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->writeSampleData(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 303
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoEncoder:Lcom/netease/cc/screen_record/codec/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/VideoEncoder;->releaseOutputBuffer(I)V

    .line 304
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 305
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Stop encoder and muxer, since the buffer has been marked with EOS"

    .line 306
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    iput v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    const/4 p1, 0x1

    .line 309
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->signalStop(Z)V

    :cond_3
    return-void

    .line 297
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareAudioEncoder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    new-instance v1, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;

    invoke-direct {v1, p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;-><init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    .line 697
    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->setCallback(Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;)V

    .line 698
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->prepare()V

    return-void
.end method

.method private prepareVideoEncoder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    new-instance v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$2;

    invoke-direct {v0, p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$2;-><init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    .line 615
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoEncoder:Lcom/netease/cc/screen_record/codec/VideoEncoder;

    invoke-virtual {v1, v0}, Lcom/netease/cc/screen_record/codec/VideoEncoder;->setCallback(Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;)V

    .line 617
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    new-instance v1, Lcom/netease/cc/screen_record/codec/ScreenRecorder$3;

    invoke-direct {v1, p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$3;-><init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setCoverCallback(Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;)V

    return-void
.end method

.method private record()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsMediaProjection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsMediaProjection:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mHandler:Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 279
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRecordCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mDstPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 283
    :cond_2
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->prepareVideoEncoder()V

    .line 284
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->prepareAudioEncoder()V

    .line 285
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->startLive()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    .line 268
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private release()V
    .locals 5

    .line 729
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsMediaProjection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    .line 730
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 734
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 737
    :cond_1
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioOutputFormat:Landroid/media/MediaFormat;

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    const/4 v0, -0x1

    .line 738
    iput v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    .line 739
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    const/4 v2, 0x0

    .line 740
    iput-boolean v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    .line 742
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v2, :cond_2

    .line 743
    invoke-virtual {v2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->release()V

    .line 744
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    .line 747
    :cond_2
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v2, :cond_3

    .line 748
    invoke-virtual {v2}, Lcom/netease/cc/screen_record/codec/MicRecorder;->release()V

    .line 749
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    .line 752
    :cond_3
    iget-boolean v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsMediaProjection:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v2, :cond_4

    .line 753
    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V

    .line 754
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 757
    :cond_4
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRecordCache:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 758
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheBuffer:Ljava/lang/Object;

    monitor-enter v2

    .line 759
    :try_start_0
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 760
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    const-string v3, "[CCR]"

    const-string v4, "[cache_record] clear cache video and audio buffers."

    .line 761
    invoke-static {v3, v4}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 765
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 767
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    .line 768
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 770
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 773
    :goto_1
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 775
    :cond_6
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mHandler:Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    .line 777
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mWorker:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    .line 778
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 779
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mWorker:Landroid/os/HandlerThread;

    :cond_7
    return-void
.end method

.method private resetAudioOutputFormat(Landroid/media/MediaFormat;)V
    .locals 2

    .line 492
    iget v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio output format changed.\n New format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_1
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioOutputFormat:Landroid/media/MediaFormat;

    :cond_2
    :goto_0
    return-void
.end method

.method private resetAudioPts(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 462
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioPtsOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 463
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioPtsOffset:J

    .line 464
    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    .line 466
    :cond_0
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioPtsOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_0
    return-void
.end method

.method private resetVideoOutputFormat(Landroid/media/MediaFormat;)V
    .locals 2

    .line 481
    iget v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video output format changed.\n New format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_1
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    :cond_2
    :goto_0
    return-void
.end method

.method private resetVideoPts(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 471
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoPtsOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 472
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoPtsOffset:J

    .line 473
    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    .line 475
    :cond_0
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoPtsOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_0
    return-void
.end method

.method private signalEndOfStream()V
    .locals 8

    .line 252
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v0, 0x0

    .line 253
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    move-object v0, v6

    .line 254
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 255
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[CCR]"

    const-string v1, "Signal EOS to muxer "

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    iget v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 257
    invoke-direct {p0, v0, v6, v7}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->writeSampleData(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 259
    :cond_1
    iget v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    if-eq v0, v1, :cond_2

    .line 260
    invoke-direct {p0, v0, v6, v7}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->writeSampleData(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 262
    :cond_2
    iput v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    .line 263
    iput v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    return-void
.end method

.method private signalStop(Z)V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mHandler:Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private startMuxerIfReady()V
    .locals 3

    .line 502
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioOutputFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 508
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    .line 509
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    .line 510
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    .line 512
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "[CCR]"

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started media muxer, videoIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 516
    :cond_3
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Mux pending video output buffers..."

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-eqz v0, :cond_5

    .line 519
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 520
    invoke-direct {p0, v2, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->muxVideo(ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 522
    :cond_5
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v0, :cond_6

    .line 523
    :goto_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-eqz v0, :cond_6

    .line 524
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 525
    invoke-direct {p0, v2, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->muxAudio(ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_2

    .line 528
    :cond_6
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Mux pending video output buffers done."

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method private startMuxerNoRecordingAudio()V
    .locals 2

    .line 539
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoOutputFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    goto :goto_1

    .line 544
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    .line 545
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxerStarted:Z

    .line 548
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-eqz v0, :cond_1

    .line 549
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 550
    invoke-direct {p0, v1, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->muxVideo(ILandroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private stopEncoders()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 710
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 711
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingAudioEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 712
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 713
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mPendingVideoEncoderBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private writeSampleData(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 417
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const-string v2, "[CCR]"

    if-eqz v0, :cond_1

    .line 421
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 424
    :cond_1
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 425
    :cond_2
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 426
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "info.size == 0, drop it."

    invoke-static {v2, p3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p3, 0x0

    goto :goto_1

    .line 429
    :cond_4
    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    .line 430
    iget v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mVideoTrackIndex:I

    if-ne p1, v0, :cond_5

    .line 431
    invoke-direct {p0, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->resetVideoPts(Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 432
    :cond_5
    iget v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioTrackIndex:I

    if-ne p1, v0, :cond_6

    .line 433
    invoke-direct {p0, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->resetAudioPts(Landroid/media/MediaCodec$BufferInfo;)V

    .line 436
    :cond_6
    :goto_0
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] Got buffer, track="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", info: size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", presentationTimeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-nez v1, :cond_8

    .line 440
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCallback:Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    if-eqz v0, :cond_8

    .line 441
    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v0, v3, v4}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;->onRecording(J)V

    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    .line 445
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 446
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p3, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 449
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 450
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sent "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes to MediaMuxer on track "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    const-string v0, "[CCR]"

    const-string v1, "release() not called!"

    .line 786
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->release()V

    :cond_0
    return-void
.end method

.method public getSavedPath()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mDstPath:Ljava/lang/String;

    return-object v0
.end method

.method public isRecording()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->pause()V

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v0, :cond_1

    .line 925
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->pauseLive()V

    :cond_1
    return-void
.end method

.method public final quit()V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->release()V

    .line 151
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCallback:Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 152
    invoke-interface {v0, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;->onStop(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->signalStop(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->resume()V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v0, :cond_1

    .line 934
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->resumeLive()V

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCallback:Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    return-void
.end method

.method public setContextAndTexId(Landroid/opengl/EGLContext;I)V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setContextAndTexId(Landroid/opengl/EGLContext;I)V

    goto :goto_0

    :cond_0
    const-string p1, "[CCR]"

    const-string p2, "screen recorder mgr is null."

    .line 951
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setExternalWaterMark(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V
    .locals 6

    .line 799
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 801
    invoke-virtual/range {v0 .. v5}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V

    :cond_0
    return-void
.end method

.method public setGameVoiceBuffer(Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mAudioEncoder:Lcom/netease/cc/screen_record/codec/MicRecorder;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->setGameVoiceObj(Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;)V

    :cond_0
    return-void
.end method

.method public setLut(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setLut(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public setRecordRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setRecordRect(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public setWaterMark(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setWaterMarkBitmap(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mWorker:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[CCR]"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mWorker:Landroid/os/HandlerThread;

    .line 162
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;-><init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mHandler:Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    .line 164
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mHandler:Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->sendEmptyMessage(I)Z

    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public updateRGBABuffer()V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mScreenRecorderMgr:Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->updateRGBABuffer()V

    goto :goto_0

    :cond_0
    const-string v0, "[CCR]"

    const-string v1, "[RGBA] screen recorder mgr is null."

    .line 943
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
