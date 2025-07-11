.class public Lcom/netease/cc/screen_record/codec/CCRecorder;
.super Ljava/lang/Object;
.source "CCRecorder.java"


# static fields
.field public static final CCVIDEO_AUDIO_SRC_MIC:I = 0x1

.field public static final CCVIDEO_QUALITY_HIGH:I = 0x2

.field public static final CCVIDEO_QUALITY_LOW:I = 0x0

.field public static final CCVIDEO_QUALITY_MEDIUM:I = 0x1

.field public static final CCVIDEO_QUALITY_SUPER:I = 0x3

.field private static MEDIA_PRJ_REQUEST_CODE:I = 0x29a9

.field private static final TAG:Ljava/lang/String; = "[CCR]"

.field private static VERSION:I = 0x272e

.field private static _instance:Lcom/netease/cc/screen_record/codec/CCRecorder;

.field private static code_2_tip:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

.field private static newPermissionPolicy:Z

.field private static screenshotPermission:Landroid/content/Intent;


# instance fields
.field private final CENTER_DISPLAY:I

.field private final DEFAULT_DISPLAY:I

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private connection:Landroid/content/ServiceConnection;

.field private dm_height:I

.field private dm_width:I

.field private iFrameInterval:F

.field private jConfig:Lorg/json/JSONObject;

.field private mAudioSource:I

.field private mBitrate:I

.field private mBound:Z

.field private mChannels:I

.field private mDisplayOption:I

.field private mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

.field private mEnableDrawCCWaterMark:Z

.field private mEnableDrawWaterMark:Z

.field private mEnableRecordAudio:Z

.field private mExtTexId:I

.field private mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

.field private mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field private mExternalWaterOffsetLTX:I

.field private mExternalWaterOffsetLTY:I

.field private mExternalWaterWidth:I

.field private mFps:I

.field private mHeight:I

.field private mIsExtTexId:Z

.field private mIsLut:Z

.field private mLutBitmap:Landroid/graphics/Bitmap;

.field private mLutLevel:I

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mMoviePath:Ljava/lang/String;

.field private mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mQuality:I

.field private mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

.field private mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

.field private mRecording:Z

.field private mSampleRate:I

.field private mService:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

.field private mSharedContext:Landroid/opengl/EGLContext;

.field private mUseGameVoice:Z

.field private mWaterMarkBitmap:Landroid/graphics/Bitmap;

.field private mWaterMarkByteArray:[B

.field private mWidth:I

.field private preRGBABufferSize:I

.field private screenRect:Landroid/graphics/RectF;

.field private targetSDKVer:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    .line 108
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cannot Get Screen Projection Permission"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cannot Get Screen Projection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid Screen Record Params"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please Init CCRecorder First"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please Stop CCRecorder First"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableRecordAudio:Z

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawWaterMark:Z

    .line 60
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawCCWaterMark:Z

    const/16 v2, 0x500

    .line 61
    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    const/16 v2, 0x2d0

    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    const/16 v2, 0x19

    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mFps:I

    const v2, 0x2625a0

    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBitrate:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->iFrameInterval:F

    const/4 v2, 0x0

    .line 64
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

    .line 65
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 68
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    .line 70
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 71
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    .line 72
    iput v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTX:I

    .line 73
    iput v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTY:I

    .line 75
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    .line 76
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    .line 79
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    const v4, 0xac44

    .line 80
    iput v4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSampleRate:I

    .line 81
    iput v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mChannels:I

    .line 87
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    .line 90
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBound:Z

    .line 91
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->targetSDKVer:I

    .line 93
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;

    .line 94
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutBitmap:Landroid/graphics/Bitmap;

    .line 96
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsLut:Z

    .line 97
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    .line 99
    iput v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 100
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    .line 101
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    .line 102
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 103
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->preRGBABufferSize:I

    .line 475
    iput v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->CENTER_DISPLAY:I

    .line 476
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->DEFAULT_DISPLAY:I

    .line 477
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mDisplayOption:I

    .line 733
    new-instance v2, Lcom/netease/cc/screen_record/codec/CCRecorder$3;

    invoke-direct {v2, p0}, Lcom/netease/cc/screen_record/codec/CCRecorder$3;-><init>(Lcom/netease/cc/screen_record/codec/CCRecorder;)V

    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->connection:Landroid/content/ServiceConnection;

    .line 116
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecording:Z

    .line 117
    iput v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mAudioSource:I

    .line 118
    iput v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mQuality:I

    const-string v1, ""

    .line 119
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMoviePath:Ljava/lang/String;

    .line 120
    sget-object v1, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkData;->base64WaterMarkString:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    .line 121
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->readConfigFile()V

    return-void
.end method

.method public static SetNewPermissionPolicyEnable(Z)V
    .locals 0

    .line 709
    sput-boolean p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    return-void
.end method

.method public static SetNotificationBuilder(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;)V
    .locals 0

    .line 729
    invoke-static {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->SetNotificationBuilder(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;)V

    return-void
.end method

.method public static SharedCCRecorder()Lcom/netease/cc/screen_record/codec/CCRecorder;
    .locals 2

    .line 129
    invoke-static {}, Lcom/netease/cc/screen_record/codec/CCRecorder;->getAndroidSDKVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->_instance:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->_instance:Lcom/netease/cc/screen_record/codec/CCRecorder;

    .line 134
    :cond_1
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->_instance:Lcom/netease/cc/screen_record/codec/CCRecorder;

    return-object v0
.end method

.method static synthetic access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mService:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/cc/screen_record/codec/CCRecorder;Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;)Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mService:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/netease/cc/screen_record/codec/CCRecorder;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/cc/screen_record/codec/CCRecorder;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCaptureOnGetProjection()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/cc/screen_record/codec/CCRecorder;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    return-object p0
.end method

.method private createAudioConfig()Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;
    .locals 10

    .line 555
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    if-eqz v0, :cond_0

    .line 556
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSampleRate:I

    .line 557
    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mChannels:I

    move v6, v0

    move v7, v1

    goto :goto_0

    :cond_0
    const v0, 0xac44

    const/4 v1, 0x1

    const v6, 0xac44

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x1

    .line 562
    new-instance v0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;

    iget-boolean v9, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    const v5, 0xfa00

    const-string v4, "audio/mp4a-latm"

    const-string v3, "OMX.google.aac.encoder"

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    return-object v0
.end method

.method private createVideoConfig()Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;
    .locals 10

    .line 548
    new-instance v9, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    iget v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBitrate:I

    iget v4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mFps:I

    iget v5, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->iFrameInterval:F

    const-string v7, "video/avc"

    const-string v6, "OMX.qcom.video.encoder.avc"

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;-><init>(IIIIFLjava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecProfileLevel;)V

    return-object v9
.end method

.method public static getAndroidSDKVersion()I
    .locals 1

    .line 536
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private hasProjectionPermission()Z
    .locals 1

    .line 713
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log2File(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 683
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 685
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 687
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 689
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 691
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_4
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private newRecorder(IIILandroid/media/projection/MediaProjection;Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;Ljava/lang/String;Lorg/json/JSONObject;ZZ)Lcom/netease/cc/screen_record/codec/ScreenRecorder;
    .locals 14

    move-object v0, p0

    .line 394
    new-instance v13, Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v7, v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    iget-boolean v12, v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    move-object v1, v13

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;-><init>(Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;IIILandroid/graphics/RectF;Landroid/media/projection/MediaProjection;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V

    .line 395
    new-instance v1, Lcom/netease/cc/screen_record/codec/CCRecorder$1;

    invoke-direct {v1, p0}, Lcom/netease/cc/screen_record/codec/CCRecorder$1;-><init>(Lcom/netease/cc/screen_record/codec/CCRecorder;)V

    invoke-virtual {v13, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setCallback(Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;)V

    return-object v13
.end method

.method private notifyError(I)V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

    if-eqz v0, :cond_0

    .line 719
    sget-object v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/netease/cc/screen_record/codec/IRecordCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private releaseEgl()V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->release()V

    .line 836
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    :cond_0
    const/4 v0, -0x1

    .line 838
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 839
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method private setupEgl()V
    .locals 3

    .line 825
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;-><init>(II)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    .line 827
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->eglSetup(Landroid/opengl/EGLContext;I)V

    .line 828
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    .line 829
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->makeCurrent()V

    :cond_0
    return-void
.end method

.method private startCapture(Z)I
    .locals 17

    move-object/from16 v12, p0

    move/from16 v0, p1

    const/4 v13, -0x1

    const-string v14, "[CCR]"

    const/4 v15, 0x1

    if-ne v0, v15, :cond_0

    .line 215
    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v1, :cond_0

    const-string v0, "media projection is null"

    .line 216
    invoke-static {v14, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    .line 217
    invoke-direct {v12, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return v13

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 221
    iget-boolean v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableRecordAudio:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v1, v11

    iget-boolean v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v15

    const-string v2, "start Capture audio(%b) game_voice(%b)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 222
    iput-object v10, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->createVideoConfig()Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;

    move-result-object v6

    .line 225
    iget-boolean v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableRecordAudio:Z

    if-eqz v1, :cond_1

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->createAudioConfig()Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, v10

    :goto_0
    if-nez v6, :cond_3

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_2
    const/4 v0, -0x3

    .line 231
    invoke-direct {v12, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return v0

    .line 234
    :cond_3
    iget v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_width:I

    iget v3, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_height:I

    iget v4, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mDisplayOption:I

    iget-object v5, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v8, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMoviePath:Ljava/lang/String;

    iget-object v9, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;

    iget-boolean v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsLut:Z

    iget-boolean v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    move/from16 v16, v1

    move-object/from16 v1, p0

    move v10, v0

    move/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lcom/netease/cc/screen_record/codec/CCRecorder;->newRecorder(IIILandroid/media/projection/MediaProjection;Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;Ljava/lang/String;Lorg/json/JSONObject;ZZ)Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    move-result-object v0

    iput-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    .line 235
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-nez v0, :cond_4

    const-string v0, "None recorder instance."

    .line 236
    invoke-static {v14, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    .line 239
    :cond_4
    iget-boolean v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    if-ne v1, v15, :cond_5

    .line 240
    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    iget v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setContextAndTexId(Landroid/opengl/EGLContext;I)V

    .line 242
    :cond_5
    iget-boolean v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    if-eqz v0, :cond_6

    .line 243
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    sget-object v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setGameVoiceBuffer(Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;)V

    goto :goto_1

    .line 245
    :cond_6
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setGameVoiceBuffer(Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;)V

    .line 247
    :goto_1
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutBitmap:Landroid/graphics/Bitmap;

    iget v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setLut(Landroid/graphics/Bitmap;I)V

    .line 248
    iget-boolean v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawWaterMark:Z

    if-eqz v0, :cond_a

    .line 250
    :try_start_0
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    if-eqz v0, :cond_7

    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    array-length v0, v0

    if-lez v0, :cond_7

    iget-boolean v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawCCWaterMark:Z

    if-eqz v0, :cond_7

    .line 251
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 252
    :goto_2
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setWaterMark(Landroid/graphics/Bitmap;I)V

    .line 254
    :cond_8
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 255
    iget v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    if-nez v0, :cond_9

    .line 256
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    .line 257
    :cond_9
    iget-object v3, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v4, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    iget v5, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    iget v6, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTX:I

    iget v7, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTY:I

    iget-object v8, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    invoke-virtual/range {v3 .. v8}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setExternalWaterMark(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    .line 260
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    .line 264
    :cond_b
    :goto_4
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz v0, :cond_c

    .line 265
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->start()V

    return v2

    :cond_c
    const/4 v0, -0x4

    .line 267
    invoke-direct {v12, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return v0
.end method

.method private startCaptureOnGetProjection()V
    .locals 2

    const-string v0, "[CCR]"

    const-string v1, "start capture on get projection"

    .line 723
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mService:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const/4 v0, 0x1

    .line 725
    invoke-direct {p0, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCapture(Z)I

    return-void
.end method


# virtual methods
.method public SetRecordCallBack(Lcom/netease/cc/screen_record/codec/IRecordCallback;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

    return-void
.end method

.method public SetRecordRect(Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 441
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    .line 442
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 443
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetRecordRect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CCR]"

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 446
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    .line 449
    :goto_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz p1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setRecordRect(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public configRecorderSettings(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 379
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "[CCR]"

    const-string v1, "recorder setting is null."

    .line 380
    invoke-static {p1, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;

    return-void

    .line 385
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 387
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;

    .line 388
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enabeDrawWaterMark(Z)V
    .locals 0

    .line 371
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawWaterMark:Z

    return-void
.end method

.method public enableDebugVoice(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 362
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->enableDebug(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enableDrawCCWaterMark(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawCCWaterMark:Z

    return-void
.end method

.method public enableLog(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 650
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getLocalLogConfigEnable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 651
    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogManager;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/netease/cc/screen_record/codec/log/LogManager;->init(Ljava/lang/String;I)V

    .line 652
    new-instance p1, Lcom/netease/cc/screen_record/codec/CCRecorder$2;

    invoke-direct {p1, p0}, Lcom/netease/cc/screen_record/codec/CCRecorder$2;-><init>(Lcom/netease/cc/screen_record/codec/CCRecorder;)V

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->setRecorderUtil(Lcom/netease/cc/screen_record/codec/RecorderUtil;)V

    :cond_0
    return-void
.end method

.method public enableRecordAudio(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableRecordAudio:Z

    return-void
.end method

.method public getAudioSource()I
    .locals 1

    .line 566
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mAudioSource:I

    return v0
.end method

.method public getBitrate()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBitrate:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .line 634
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mFps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 626
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    return v0
.end method

.method public getMoviePath()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getQuanlity()I
    .locals 1

    .line 582
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mQuality:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 705
    sget v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->VERSION:I

    return v0
.end method

.method public getWdith()I
    .locals 1

    .line 618
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    return v0
.end method

.method public initGameVoice(IIIII)I
    .locals 7

    const-string v0, "[CCR]"

    const-string v1, "initGameVoice"

    .line 329
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    .line 332
    :cond_0
    sget-object v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->init(IIIII)I

    move-result p3

    if-nez p3, :cond_1

    const/4 p4, 0x1

    .line 334
    iput-boolean p4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    .line 335
    :cond_1
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSampleRate:I

    .line 336
    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mChannels:I

    return p3
.end method

.method public isRecording()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 325
    :cond_0
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->isRecording()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)I
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult. requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->MEDIA_PRJ_REQUEST_CODE:I

    if-eq p2, v0, :cond_0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "REQUEST CODE NOT EQUAL "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/netease/cc/screen_record/codec/CCRecorder;->MEDIA_PRJ_REQUEST_CODE:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1

    :cond_0
    const/4 p2, -0x1

    if-eq p3, p2, :cond_1

    const-string p1, "notify ERROR_PERMISSION_REJECT."

    .line 184
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    const/4 p1, 0x0

    .line 186
    sput-object p1, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    const/4 p1, -0x2

    return p1

    .line 190
    :cond_1
    sget-boolean p2, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    sput-object p2, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    .line 193
    :cond_2
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 195
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_width:I

    .line 196
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_height:I

    .line 198
    iget p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->targetSDKVer:I

    const/16 v0, 0x1c

    const/4 v1, 0x1

    if-le p2, v0, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-le p2, v0, :cond_3

    .line 199
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "code"

    .line 201
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "data"

    .line 202
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    return p1

    :cond_3
    const-string p2, "media_projection"

    .line 207
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 208
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p3, p4}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 210
    invoke-direct {p0, v1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCapture(Z)I

    move-result p1

    return p1
.end method

.method public pauseRecord(Z)I
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->isRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "[CCR]"

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 302
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "Pause record."

    .line 303
    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->pause()V

    .line 305
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 306
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-ne p1, v1, :cond_1

    const-string p1, "Resume record."

    .line 307
    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->resume()V

    .line 309
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public pushGameVoiceData([BI)I
    .locals 1

    .line 348
    :try_start_0
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->pushGameVoiceBufferData([BI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    const-string p2, "[CCR]"

    const-string v0, "==========game voice buffer null======="

    .line 352
    invoke-static {p2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 p2, -0x65

    .line 356
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, -0x65

    :goto_0
    return p1
.end method

.method public setAudioSource(I)V
    .locals 0

    .line 570
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mAudioSource:I

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    .line 646
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBitrate:I

    return-void
.end method

.method public setDisplayOption(I)V
    .locals 0

    .line 479
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mDisplayOption:I

    return-void
.end method

.method public setExternalWaterMark(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    if-eq p1, v0, :cond_1

    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 461
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "waterImage"

    .line 462
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "waterImageWidth"

    .line 463
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 464
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 465
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "[CCR]"

    const-string v1, "===========set external watermark exception=========="

    .line 467
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 456
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 457
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    return-void
.end method

.method public setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0

    if-eqz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 489
    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    const/4 p1, -0x1

    .line 490
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTX:I

    .line 491
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTY:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 484
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 485
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    return-void
.end method

.method public setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 0

    if-eqz p1, :cond_5

    if-gez p2, :cond_0

    goto :goto_1

    .line 500
    :cond_0
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 501
    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    .line 502
    iput p3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTX:I

    .line 503
    iput p4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTY:I

    const/4 p1, 0x1

    if-eq p5, p1, :cond_4

    const/4 p1, 0x2

    if-eq p5, p1, :cond_3

    const/4 p1, 0x3

    if-eq p5, p1, :cond_2

    const/4 p1, 0x4

    if-eq p5, p1, :cond_1

    .line 518
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->NONE:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    goto :goto_0

    .line 515
    :cond_1
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    goto :goto_0

    .line 512
    :cond_2
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    goto :goto_0

    .line 509
    :cond_3
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->LEFT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    goto :goto_0

    .line 506
    :cond_4
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->LEFT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    :goto_0
    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 496
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 497
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 638
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mFps:I

    return-void
.end method

.method public setGameVoicePollRate(I)V
    .locals 1

    .line 843
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->setGameVoicePollRate(I)V

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 630
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    return-void
.end method

.method public setIFrameInterval(F)V
    .locals 0

    .line 702
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->iFrameInterval:F

    return-void
.end method

.method public setLogoByteArray(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    return-void
.end method

.method public setLut(Landroid/graphics/Bitmap;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 525
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsLut:Z

    .line 529
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutBitmap:Landroid/graphics/Bitmap;

    .line 530
    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutLevel:I

    return-void
.end method

.method public setMoviePath(Ljava/lang/String;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMoviePath:Ljava/lang/String;

    return-void
.end method

.method public setParameter(I[Ljava/lang/Object;)V
    .locals 10

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GameTex] setParameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const-string v4, " current thread "

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 801
    :pswitch_0
    iput-boolean v7, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    .line 802
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setupEgl()V

    .line 803
    invoke-static {}, Lcom/netease/cc/screen_record/codec/screencapture/OpenGlUtils;->create2DTextureID()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 804
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    .line 805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[GameTex] generate ext tex id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 778
    :pswitch_1
    array-length p1, p2

    if-ne p1, v5, :cond_3

    aget-object p1, p2, v6

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    if-eq p1, v0, :cond_3

    .line 779
    aget-object p1, p2, v7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 780
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GameTex] update RGBA buffer. texId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " w/h "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 783
    aget-object p2, p2, v6

    check-cast p2, [B

    check-cast p2, [B

    .line 784
    array-length v5, p2

    mul-int v6, p1, v0

    mul-int/lit8 v6, v6, 0x4

    if-eq v5, v6, :cond_0

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GameTex] RGBA size ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") is NOT same with width * height * 4 ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_0
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget v5, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->preRGBABufferSize:I

    if-eq v2, v5, :cond_2

    .line 788
    :cond_1
    array-length v2, p2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 789
    array-length v2, p2

    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->preRGBABufferSize:I

    .line 791
    :cond_2
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 792
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 793
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 794
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-static {p2, p1, v0, v2, v7}, Lcom/netease/cc/screen_record/codec/screencapture/OpenGlUtils;->loadTexture(Ljava/nio/Buffer;IIIZ)I

    .line 795
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[GameTex] update texture costs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz p1, :cond_3

    .line 797
    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->updateRGBABuffer()V

    goto/16 :goto_0

    .line 766
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GameTex] setParameter CC_RECORD_TEXTURE_ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    array-length p1, p2

    const/4 v8, 0x5

    if-ne p1, v8, :cond_3

    aget-object p1, p2, v6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_3

    aget-object p1, p2, v7

    if-eqz p1, :cond_3

    .line 768
    iput-boolean v7, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    .line 769
    aget-object p1, p2, v6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 770
    aget-object p1, p2, v7

    check-cast p1, Landroid/opengl/EGLContext;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    .line 771
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v6, p2, v2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p1, v0, v6}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->setGameTextureRotation(III)V

    .line 772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GameTex] set texture. Ctx "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " HFlip "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    .line 773
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " VFlip "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Rotation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " texId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 772
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPropInt(Ljava/lang/String;I)V
    .locals 5

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Config] setPropInt-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[CCR]"

    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 814
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x5caf3067

    if-eq v3, v4, :cond_2

    const v4, 0x14dfe018

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "ccr_enable_sync_release_default_false"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "ccr_enable_single_egl_init_once_default_false"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    goto :goto_4

    .line 819
    :cond_4
    sget-object p1, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSyncRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    .line 816
    :cond_6
    sget-object p1, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSingleEglCore:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_4
    return-void
.end method

.method public setQuality(I)V
    .locals 4

    .line 587
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mQuality:I

    const/16 v0, 0x14

    const/16 v1, 0x280

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    const/16 v3, 0x2d0

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x500

    .line 609
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    .line 610
    invoke-virtual {p0, v3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    const/16 p1, 0x1e

    .line 611
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const p1, 0x1e8480

    .line 612
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x3c0

    .line 603
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    const/16 p1, 0x21c

    .line 604
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    const/16 p1, 0x19

    .line 605
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const p1, 0x16e360

    .line 606
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    goto :goto_0

    .line 597
    :cond_2
    invoke-virtual {p0, v3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    .line 598
    invoke-virtual {p0, v1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const p1, 0x124f80

    .line 600
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    goto :goto_0

    .line 591
    :cond_3
    invoke-virtual {p0, v1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    const/16 p1, 0x168

    .line 592
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    .line 593
    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const p1, 0xc3500

    .line 594
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    :goto_0
    return-void
.end method

.method public setWdith(I)V
    .locals 0

    .line 622
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    return-void
.end method

.method public startRecord(Landroid/app/Activity;)V
    .locals 5

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->targetSDKVer:I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->targetSDKVer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " version [sr-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.3.1.016"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " v-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 142
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 144
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_width:I

    .line 145
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_height:I

    const-string p1, "start record game texture."

    .line 146
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCapture(Z)I

    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->hasProjectionPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hasProjectionPermission."

    .line 151
    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 157
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    const/4 v3, -0x1

    sget-object v4, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 158
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2

    .line 159
    invoke-direct {p0, v2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCapture(Z)I

    return-void

    :cond_2
    const-string v0, "[Error] can not get projection"

    .line 162
    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x7

    .line 166
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "startActivityForResult."

    .line 170
    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media_projection"

    .line 171
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 172
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    sget v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->MEDIA_PRJ_REQUEST_CODE:I

    add-int/2addr v1, v2

    sput v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->MEDIA_PRJ_REQUEST_CODE:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopRecord()I
    .locals 4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsLut:Z

    const/4 v1, 0x0

    .line 277
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    const/4 v2, -0x1

    .line 278
    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 279
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    .line 280
    sget-object v3, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v3}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->release()V

    .line 283
    :cond_0
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz v3, :cond_1

    .line 284
    invoke-virtual {v3}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->quit()V

    .line 285
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->releaseEgl()V

    .line 286
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    return v0

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->releaseEgl()V

    return v2
.end method

.method public unInitGameVoice()V
    .locals 2

    const-string v0, "[CCR]"

    const-string v1, "unInitGameVoice"

    .line 341
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    return-void
.end method
