.class public final Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.super Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;
    }
.end annotation


# static fields
.field private static final FFP_EVENT_SAVE_STATE:I = 0x7531

.field private static final FFP_PROP_FLOAT_PLAYBACK_RATE:I = 0x2713

.field public static final FFP_PROP_FLOAT_VIDEO_FPS:I = 0x2774

.field private static final GL_CALLBACK_CMD_ON_BIND_FRAMEBUFFER:I = 0x1f40

.field private static final GL_CALLBACK_CMD_ON_POST_RENDER_BUFFER:I = 0x1f42

.field private static final GL_CALLBACK_CMD_ON_PRE_RENDER_BUFFER:I = 0x1f41

.field private static final JITTER_DEFAULT:I = 0x7d0

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_CAPTURE_COMPLETE:I = 0x12c

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_FIRST_BUFFERING_COMPLETE:I = 0x12d

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_INFO_MEDIA_ACCURATE_SEEK_COMPLETE:I = 0x2774

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_NO_LIVE:I = 0x65

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field protected static final MEDIA_SET_VIDEO_SAR:I = 0x2711

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static SDK_VERSION:I = 0x271a

.field private static final TAG:Ljava/lang/String; = "tv.danmaku.ijk.media.player.IjkMediaPlayer"

.field public static final lock:Ljava/lang/Object;

.field private static mDataSource:Ljava/lang/String;

.field private static mDevMode:I

.field private static volatile mIsLibLoaded:Z

.field private static volatile mIsNativeInitialized:Z

.field private static mNotifyIsFreeStreamListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

.field private static mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

.field private static mStatLogUrl:Ljava/lang/String;

.field private static final mtxFlipV:[F

.field private static sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

.field private static staticVideoUrl:Ljava/lang/String;

.field private static utilInitialized:Z


# instance fields
.field private DEBUG_GET_VIDEO_PLAY_URL:Ljava/lang/String;

.field private GET_CID_URL:Ljava/lang/String;

.field public addedConfig:Lorg/json/JSONObject;

.field private anchorCCid:I

.field private buffer_time:I

.field private can_fwd_:Z

.field private cdn:Ljava/lang/String;

.field private cell_playersetting_:Z

.field public defaultOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

.field private default_player_setting_:Z

.field private draw2surface:Z

.field private fwdextime_:I

.field private fwdnew_:Z

.field private gametype:I

.field private is_free_cdn_:I

.field private mCurrentState:I

.field private mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

.field private mFFConcatContent:Ljava/lang/String;

.field private mListenerContext:I

.field private mNativeMediaDataSource:J

.field private mNativeMediaPlayer:J

.field private mNativePlayerConfig:J

.field private mNativePlayerStat:J

.field private mNativeSurfaceTexture:I

.field private mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

.field private mOnGetVideoUrlListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

.field private mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

.field public mOnRawDecoderListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRawDecodeListener;

.field public mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

.field private mPanorama:I

.field private final mSTMatrix:[F

.field private final mSTMatrixFlipV:[F

.field private mScreenOnWhilePlaying:Z

.field private mSoftDecodeTextureId:I

.field private mStayAwake:Z

.field private mSubtitleState:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I

.field private mVbrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoHeight:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxjitter_:I

.field private mbPause:Z

.field private minjitter_:I

.field private mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

.field private myOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

.field private no_playersetting_:Z

.field private panorama:I

.field public picHeight:I

.field public picWidth:I

.field playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

.field private rawData:I

.field private roomId:I

.field private scopHeight:I

.field private scopMode:Z

.field private scopWidth:I

.field private sdkSource:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private stRender:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

.field private strGameUid:Ljava/lang/String;

.field private strLogExtraInfo:Ljava/lang/String;

.field private subId:I

.field private volatile surface:Landroid/view/Surface;

.field private surfaceview_height:I

.field private surfaceview_width:I

.field private templateType:I

.field private uid:J

.field private urs:Ljava/lang/String;

.field private vbrSelect:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 130
    fill-array-data v0, :array_0

    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mtxFlipV:[F

    const/4 v0, 0x0

    .line 171
    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDevMode:I

    const-string v1, "http://query.v.cc.163.com/query?content="

    .line 174
    sput-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStatLogUrl:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    const-string v1, ""

    .line 206
    sput-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->staticVideoUrl:Ljava/lang/String;

    .line 228
    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    invoke-direct {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;-><init>()V

    sput-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    .line 235
    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 248
    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    const/4 v1, 0x0

    .line 328
    sput-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    .line 330
    sput-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNotifyIsFreeStreamListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

    .line 350
    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->utilInitialized:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 268
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 276
    sget-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V

    return-void
.end method

.method private constructor <init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V
    .locals 4

    .line 714
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;-><init>()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 168
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    const/4 v2, -0x3

    .line 169
    iput v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSubtitleState:I

    .line 170
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mPanorama:I

    const-string v2, "http://192.168.229.158:50000/info_by_urs?urs="

    .line 172
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->GET_CID_URL:Ljava/lang/String;

    const-string v2, "http://192.168.229.163:8282/video_play_url_mobile/"

    .line 173
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->DEBUG_GET_VIDEO_PLAY_URL:Ljava/lang/String;

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVbrList:Ljava/util/List;

    .line 176
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surfaceview_width:I

    .line 177
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surfaceview_height:I

    .line 179
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    .line 180
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSoftDecodeTextureId:I

    .line 183
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mbPause:Z

    .line 190
    sget-object v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->SOFTWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    .line 194
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->anchorCCid:I

    .line 195
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->templateType:I

    .line 196
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->roomId:I

    .line 197
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->subId:I

    .line 198
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->panorama:I

    .line 199
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->gametype:I

    const-wide/16 v2, 0x0

    .line 200
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->uid:J

    const-string v2, ""

    .line 201
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->strGameUid:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->videoUrl:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->urs:Ljava/lang/String;

    .line 208
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sid:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->vbrSelect:Ljava/lang/String;

    .line 210
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->strLogExtraInfo:Ljava/lang/String;

    const/4 v2, 0x1

    .line 212
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->can_fwd_:Z

    .line 213
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->fwdnew_:Z

    .line 214
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->buffer_time:I

    .line 215
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->fwdextime_:I

    .line 216
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->minjitter_:I

    .line 217
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->maxjitter_:I

    .line 218
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cell_playersetting_:Z

    .line 219
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->default_player_setting_:Z

    .line 220
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->no_playersetting_:Z

    .line 221
    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->is_free_cdn_:I

    .line 222
    new-instance v2, Ltv/danmaku/ijk/media/player/PlayerConfig;

    invoke-direct {v2}, Ltv/danmaku/ijk/media/player/PlayerConfig;-><init>()V

    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    .line 223
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->draw2surface:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 279
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    new-array v1, v1, [F

    .line 280
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrixFlipV:[F

    .line 324
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRawDecoderListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRawDecodeListener;

    .line 326
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnGetVideoUrlListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

    .line 371
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stRender:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    .line 458
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->addedConfig:Lorg/json/JSONObject;

    .line 641
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->defaultOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

    .line 715
    invoke-direct {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initPlayer(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 272
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V

    return-void
.end method

.method private static GetUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1824
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->SDK_VERSION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ltv/danmaku/ijk/media/player/utils/SNUtils;->GetSN()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 p0, 0x3

    aput-object p1, v1, p0

    const-string p0, "Platform/Android VERSION/%s APP/cclive SN/%s SRC/%s USER_UID/%s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static OnVideoDecoderSelectedFromNative(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 686
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->myOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

    if-eqz v0, :cond_2

    .line 692
    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;->OnVideoDecoderSelected(Ljava/lang/String;I)V

    .line 693
    :cond_2
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->defaultOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

    invoke-interface {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;->OnVideoDecoderSelected(Ljava/lang/String;I)V

    return-void
.end method

.method private native _captureFrame()V
.end method

.method private native _displaySubtitle(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _getAudioCodecInfo()Ljava/lang/String;
.end method

.method private static final native _getColorFormatName(I)Ljava/lang/String;
.end method

.method private native _getMediaMeta()Landroid/os/Bundle;
.end method

.method private native _getTextureId()I
.end method

.method private native _getVideoCodecInfo()Ljava/lang/String;
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pausedisplay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset(I)V
.end method

.method private native _resumedisplay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setAvCodecOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
.end method

.method private native _setFrameDrop(I)V
.end method

.method private native _setLanguage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setMediaCodecEnabled(Z)V
.end method

.method private native _setOpenSLESEnabled(Z)V
.end method

.method private native _setOption(ILjava/lang/String;J)V
.end method

.method private native _setOverlayFormat(I)V
.end method

.method private native _setPlayerConfig(Ltv/danmaku/ijk/media/player/PlayerConfig;)V
.end method

.method private native _setSaveToLocal(Ljava/lang/String;)V
.end method

.method private native _setStartSeekPos(I)V
.end method

.method private native _setSwScaleOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$002(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->rawData:I

    return p1
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J
    .locals 2

    .line 101
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNativeMediaPlayer:J

    return-wide v0
.end method

.method static synthetic access$102(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;
    .locals 0

    .line 101
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    return-object p1
.end method

.method static synthetic access$1100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$1200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$1202(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return p0
.end method

.method static synthetic access$1500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return p0
.end method

.method static synthetic access$1600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J
    .locals 2

    .line 101
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->uid:J

    return-wide v0
.end method

.method static synthetic access$1700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->staticVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    sput-object p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->staticVideoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->src:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->draw2surface:Z

    return p0
.end method

.method static synthetic access$2000()I
    .locals 1

    .line 101
    sget v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->SDK_VERSION:I

    return v0
.end method

.method static synthetic access$2100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cdn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->templateType:I

    return p0
.end method

.method static synthetic access$2202(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->templateType:I

    return p1
.end method

.method static synthetic access$2300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->roomId:I

    return p0
.end method

.method static synthetic access$2302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->roomId:I

    return p1
.end method

.method static synthetic access$2400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->subId:I

    return p0
.end method

.method static synthetic access$2402(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->subId:I

    return p1
.end method

.method static synthetic access$2500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->onCCPlayerFirstBufferingComplete()V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->GetUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVbrList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2902(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->videoUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/Soft2TextureRender;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stRender:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    return-object p0
.end method

.method static synthetic access$3000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->anchorCCid:I

    return p0
.end method

.method static synthetic access$3002(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->anchorCCid:I

    return p1
.end method

.method static synthetic access$302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/Soft2TextureRender;
    .locals 0

    .line 101
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stRender:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    return-object p1
.end method

.method static synthetic access$3100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->gametype:I

    return p0
.end method

.method static synthetic access$3102(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->gametype:I

    return p1
.end method

.method static synthetic access$3200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->vbrSelect:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3202(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->vbrSelect:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->is_free_cdn_:I

    return p0
.end method

.method static synthetic access$3302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->is_free_cdn_:I

    return p1
.end method

.method static synthetic access$3400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->no_playersetting_:Z

    return p0
.end method

.method static synthetic access$3500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->default_player_setting_:Z

    return p0
.end method

.method static synthetic access$3600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->can_fwd_:Z

    return p0
.end method

.method static synthetic access$3602(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->can_fwd_:Z

    return p1
.end method

.method static synthetic access$3700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->fwdnew_:Z

    return p0
.end method

.method static synthetic access$3702(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->fwdnew_:Z

    return p1
.end method

.method static synthetic access$3800(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->buffer_time:I

    return p0
.end method

.method static synthetic access$3802(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->buffer_time:I

    return p1
.end method

.method static synthetic access$3900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->minjitter_:I

    return p0
.end method

.method static synthetic access$3902(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->minjitter_:I

    return p1
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$4000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->maxjitter_:I

    return p0
.end method

.method static synthetic access$4002(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->maxjitter_:I

    return p1
.end method

.method static synthetic access$4100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cell_playersetting_:Z

    return p0
.end method

.method static synthetic access$4200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->urs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->strLogExtraInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;
    .locals 0

    .line 101
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnGetVideoUrlListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

    return-object p0
.end method

.method static synthetic access$4500()Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;
    .locals 1

    .line 101
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNotifyIsFreeStreamListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

    return-object v0
.end method

.method static synthetic access$502(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->scopWidth:I

    return p1
.end method

.method static synthetic access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surfaceview_width:I

    return p0
.end method

.method static synthetic access$702(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .line 101
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->scopHeight:I

    return p1
.end method

.method static synthetic access$800(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 0

    .line 101
    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surfaceview_height:I

    return p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkPackageInfo(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2116
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 2118
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private createTextureObject()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 784
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 787
    aget v0, v1, v2

    const v1, 0x8d65

    .line 788
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    .line 791
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    .line 793
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 795
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 797
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return v0
.end method

.method public static getColorFormatName(I)Ljava/lang/String;
    .locals 0

    .line 1320
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getColorFormatName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1759
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1764
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 2

    .line 426
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getPreferH264Decoder()Ljava/lang/String;
    .locals 12

    .line 2001
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v0, "video/avc"

    .line 2004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 2007
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2008
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    .line 2012
    invoke-static {v5}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 2013
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 2016
    :cond_2
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 2020
    :cond_3
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    .line 2021
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    .line 2023
    :cond_4
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_2

    .line 2026
    :cond_5
    invoke-static {v6, v0}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_2

    .line 2032
    :cond_6
    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2036
    :cond_8
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    const/4 v3, 0x0

    .line 2038
    :goto_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 2039
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    .line 2040
    iget v6, v5, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    iget v7, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    if-le v6, v7, :cond_9

    move-object v0, v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_d

    .line 2044
    iget-object v2, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v2, :cond_b

    goto :goto_5

    .line 2047
    :cond_b
    iget v2, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_LAST_CHANCE:I

    if-ge v2, v3, :cond_c

    .line 2048
    sget-object v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v5, v4

    const-string v0, "unaccetable codec: %s rank(%d)"

    invoke-static {v3, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2052
    :cond_c
    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    :goto_5
    return-object v1
.end method

.method public static getPreferH265Decoder()Ljava/lang/String;
    .locals 12

    .line 2058
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v0, "video/hevc"

    .line 2061
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 2064
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2065
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    .line 2069
    invoke-static {v5}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 2070
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 2073
    :cond_2
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 2077
    :cond_3
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    .line 2078
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    .line 2080
    :cond_4
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_2

    .line 2083
    :cond_5
    invoke-static {v6, v0}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_2

    .line 2089
    :cond_6
    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2093
    :cond_8
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    const/4 v3, 0x0

    .line 2095
    :goto_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 2096
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    .line 2097
    iget v6, v5, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    iget v7, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    if-le v6, v7, :cond_9

    move-object v0, v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_d

    .line 2101
    iget-object v2, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v2, :cond_b

    goto :goto_5

    .line 2104
    :cond_b
    iget v2, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_LAST_CHANCE:I

    if-ge v2, v3, :cond_c

    .line 2105
    sget-object v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v5, v4

    const-string v0, "unaccetable codec: %s rank(%d)"

    invoke-static {v3, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2109
    :cond_c
    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    :goto_5
    return-object v1
.end method

.method private static initNativeOnce()V
    .locals 2

    .line 250
    const-class v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v0

    .line 251
    :try_start_0
    sget-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 252
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_init(Z)V

    .line 253
    sput-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    .line 255
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initPlayer(Ltv/danmaku/ijk/media/player/IjkLibLoader;ZI)V
    .locals 1

    .line 719
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 720
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initNativeOnce()V

    .line 723
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 724
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0

    .line 725
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 726
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 728
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    .line 735
    :goto_0
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 736
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrixFlipV:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 737
    iput p3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mPanorama:I

    .line 738
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setup(Ljava/lang/Object;ZI)V

    return-void
.end method

.method private initSurface()V
    .locals 4

    .line 743
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "IJKMEDIA"

    const-string v2, "init surface"

    .line 744
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    if-nez v1, :cond_0

    .line 746
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->createTextureObject()I

    move-result v1

    iput v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    :cond_0
    const-string v1, "IJKMEDIA"

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[rotate] init surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 749
    new-instance v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$3;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$3;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 758
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    .line 759
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSurfaceWithTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 765
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "IJKMEDIA"

    const-string v2, "init surface=="

    .line 766
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 768
    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$4;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 777
    new-instance p1, Landroid/view/Surface;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    .line 778
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private initVodSetting()V
    .locals 2

    const/4 v0, 0x0

    .line 579
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setRealTimeFlag(Z)V

    const-string v0, "reconnect"

    const-string v1, "1"

    .line 580
    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timeout"

    const-string v1, "20*1000*1000"

    .line 581
    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "probesize"

    const-string v1, "200000"

    .line 582
    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "analyzeduration"

    const-string v1, "12000000"

    .line 583
    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    .locals 2

    .line 237
    const-class v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v0

    .line 238
    :try_start_0
    sget-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    if-nez v1, :cond_0

    const-string v1, "ijkffmpeg"

    .line 239
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ijkutil"

    .line 240
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ijksdl"

    .line 241
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ijkplayer"

    .line 242
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 243
    sput-boolean p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 245
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init(Z)V
.end method

.method private final native native_message_loop(Ljava/lang/Object;)V
.end method

.method private final native native_setup(Ljava/lang/Object;ZI)V
.end method

.method private native onCCPlayerFirstBufferingComplete()V
.end method

.method private static onControlResolveSegmentCount(Ljava/lang/Object;)I
    .locals 3

    .line 1512
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onControlResolveSegmentCount"

    invoke-static {v0, v2, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 1513
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1517
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1518
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return v0

    .line 1522
    :cond_1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    if-nez p0, :cond_2

    return v0

    .line 1526
    :cond_2
    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentCount()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static onControlResolveSegmentDuration(Ljava/lang/Object;I)I
    .locals 4

    .line 1569
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onControlResolveSegmentDuration %d"

    invoke-static {v0, v2, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 1570
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1574
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1575
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return v0

    .line 1579
    :cond_1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    if-nez p0, :cond_2

    return v0

    .line 1583
    :cond_2
    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentDuration(I)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static onControlResolveSegmentOfflineMrl(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 4

    .line 1550
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onControlResolveSegmentOfflineMrl %d"

    invoke-static {v0, v2, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1551
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1555
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1556
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-object v0

    .line 1560
    :cond_1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    if-nez p0, :cond_2

    return-object v0

    .line 1564
    :cond_2
    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentOfflineMrl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static onControlResolveSegmentUrl(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 4

    .line 1531
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onControlResolveSegmentUrl %d"

    invoke-static {v0, v2, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1532
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1536
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1537
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-object v0

    .line 1541
    :cond_1
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    if-nez p0, :cond_2

    return-object v0

    .line 1545
    :cond_2
    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentUrl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private native onPlayerLoadError(I)V
.end method

.method public static onRawImageAvailable(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIII)V
    .locals 12

    if-eqz p0, :cond_0

    .line 390
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 392
    iget-object v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRawDecoderListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRawDecodeListener;

    if-eqz v1, :cond_0

    move-object v2, p1

    move/from16 v3, p4

    move-object v4, p2

    move/from16 v5, p5

    move-object v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 393
    invoke-interface/range {v1 .. v11}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRawDecodeListener;->onRawImageAvailable(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIII)V

    :cond_0
    return-void
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1601
    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1605
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1606
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez v2, :cond_1

    return-object v0

    .line 1610
    :cond_1
    iget-object p0, v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    if-nez p0, :cond_2

    .line 1612
    sget-object p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;->sInstance:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    :cond_2
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 1614
    invoke-interface/range {v1 .. v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;->onMediaCodecSelect(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1477
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1485
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 1487
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    if-eqz v0, :cond_3

    .line 1488
    invoke-virtual {v0, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1489
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method private releaseSurface()V
    .locals 3

    .line 806
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 807
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 809
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 810
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    .line 812
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static requestRedraw(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 374
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->SOFTWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->draw2surface:Z

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stRender:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    if-nez v0, :cond_1

    return-void

    .line 378
    :cond_1
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    iget p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    invoke-virtual {v0, v1, p0}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->onRequestUpdateTexture(II)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

    if-eqz p0, :cond_3

    .line 381
    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;->onRequestUpdateTexture()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static sendFFplayerState(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_4

    .line 1701
    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1705
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1706
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x7531

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 1713
    invoke-static {p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 1715
    sget-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ltv/danmaku/ijk/media/player/utils/SPUtils;->setSwicherString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    :cond_3
    invoke-virtual {p0, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnFileSave(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static sendHttpStat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1727
    :cond_0
    sget-object p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    if-eqz p0, :cond_1

    .line 1728
    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;->reportHttpStatics(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendHttpStat(Ljava/lang/String;)V
    .locals 2

    .line 1733
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    if-eqz v0, :cond_0

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStatLogUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1736
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;->reportHttpStatics(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native setCropMode(ZII)V
.end method

.method private native setLoopNumber(I)V
.end method

.method private native setRealTimeFlag(Z)V
.end method

.method private native setVideoDisable(I)V
.end method

.method private stayAwake(Z)V
    .locals 1

    .line 1016
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1017
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1019
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1023
    :cond_1
    :goto_0
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    .line 1024
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .line 1028
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 1029
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public OpenCCApp(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 1

    const-string v0, "com.netease.cc"

    .line 2127
    invoke-direct {p0, v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->checkPackageInfo(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2132
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2133
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2135
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 2139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x2

    return p1
.end method

.method public OpenCCAppWithRoomId(Landroid/app/Activity;II)I
    .locals 4

    const-string v0, "/"

    const-string v1, "com.netease.cc"

    .line 2147
    invoke-direct {p0, v1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->checkPackageInfo(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2150
    sget-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "=========no cc install==============="

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 2155
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cc://join-room/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2157
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2159
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 2163
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x2

    return p1
.end method

.method public StartPlay(Ljava/lang/String;)I
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 489
    invoke-virtual/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->StartPlay(Ljava/lang/String;JJ)I

    move-result p1

    return p1
.end method

.method public StartPlay(Ljava/lang/String;JJ)I
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    cmp-long v3, p4, v1

    if-lez v3, :cond_1

    .line 495
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "%s&ccsliceoffset=%d&ccslicelength=%d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 498
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initVodSetting()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->parseAddedConfig()V

    .line 518
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    return v0

    :catch_0
    move-exception p1

    .line 514
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, -0x4

    return p1

    :catch_1
    move-exception p1

    .line 510
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p1, -0x3

    return p1

    :catch_2
    move-exception p1

    .line 506
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 p1, -0x2

    return p1

    :catch_3
    move-exception p1

    .line 502
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public StartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    const-string v0, " "

    const-string v1, ""

    .line 1793
    invoke-virtual {p8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1795
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    sget-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "==================call SetSdkSource Before Play=============="

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 1800
    :cond_0
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vapi.cc.easebar.com"

    .line 1801
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://vquery.cc.vapi.cc.easebar.com/query?content="

    .line 1803
    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStatLogUrl:Ljava/lang/String;

    .line 1804
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDomain()V

    .line 1806
    :cond_1
    iput-object p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->src:Ljava/lang/String;

    .line 1807
    iput-object p3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->urs:Ljava/lang/String;

    .line 1808
    iput-object p6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sid:Ljava/lang/String;

    .line 1809
    iput-wide p4, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->uid:J

    .line 1810
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p3

    const/16 p4, 0x800

    if-ge p3, p4, :cond_2

    .line 1811
    iput-object p8, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->strLogExtraInfo:Ljava/lang/String;

    .line 1812
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "?coplatform="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&src="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->src:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&sid="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&vbrmode=1"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p9, :cond_3

    .line 1814
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&isfree=1"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1815
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eq p7, v1, :cond_4

    .line 1817
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&vbrname="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1818
    :cond_4
    sget-object p2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "=============mobile url is============"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    new-instance p2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-virtual {p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p4
.end method

.method public StartPlay(Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;)I
    .locals 1

    .line 556
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    new-instance p1, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;

    invoke-direct {p1, v0, p2}, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;-><init>(Ljava/io/File;Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;)V

    .line 558
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    .line 559
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initVodSetting()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 570
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p1, -0x3

    return p1

    :catch_1
    move-exception p1

    .line 566
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 p1, -0x2

    return p1

    :catch_2
    move-exception p1

    .line 562
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public StartPlayFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 0

    .line 526
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 527
    new-instance p2, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;

    invoke-direct {p2, p1}, Ltv/danmaku/ijk/media/player/misc/RawDataSourceProvider;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 528
    invoke-virtual {p0, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    .line 529
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initVodSetting()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->parseAddedConfig()V

    .line 548
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 544
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, -0x4

    return p1

    :catch_1
    move-exception p1

    .line 540
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p1, -0x3

    return p1

    :catch_2
    move-exception p1

    .line 536
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 p1, -0x2

    return p1

    :catch_3
    move-exception p1

    .line 532
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public native _getPropertyFloat(IF)F
.end method

.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setPropertyFloat(IF)V
.end method

.method public captureFrame()V
    .locals 0

    .line 705
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_captureFrame()V

    return-void
.end method

.method public configPlayerSetting(Ljava/lang/String;)V
    .locals 1

    .line 461
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->addedConfig:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disableVideo(I)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVideoDisable(I)V

    return-void
.end method

.method public displaySubtitle(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    .line 416
    :goto_0
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSubtitleState:I

    .line 417
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_displaySubtitle(Z)V

    return-void
.end method

.method public draw()V
    .locals 9

    .line 284
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->SOFTWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->draw2surface:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->rawData:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 285
    :cond_1
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->redraw()V

    goto :goto_1

    .line 287
    :cond_2
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 293
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 294
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 295
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrixFlipV:[F

    const/4 v4, 0x0

    iget-object v5, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    const/4 v6, 0x0

    sget-object v7, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mtxFlipV:[F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 299
    :try_start_2
    sget-object v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "==========updateTexImage exception========"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    :cond_3
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 0

    .line 1339
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_finalize()V

    return-void
.end method

.method public getCurrentPlayVbr()Ljava/lang/String;
    .locals 1

    .line 1742
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->vbrSelect:Ljava/lang/String;

    return-object v0
.end method

.method public native getCurrentPosition()J
.end method

.method public getCurrentState()I
    .locals 1

    .line 1055
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    return v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 921
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "\\."

    .line 1773
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1774
    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1776
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    .line 1777
    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object p1, p1, v3

    .line 1778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public native getDuration()J
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 8

    .line 1144
    new-instance v0, Ltv/danmaku/ijk/media/player/MediaInfo;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/MediaInfo;-><init>()V

    const-string v1, "ijkplayer"

    .line 1145
    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mMediaPlayerName:Ljava/lang/String;

    .line 1147
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getVideoCodecInfo()Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x2

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_1

    .line 1149
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1150
    array-length v2, v1

    if-lt v2, v4, :cond_0

    .line 1151
    aget-object v2, v1, v6

    iput-object v2, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 1152
    aget-object v1, v1, v7

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    goto :goto_0

    .line 1153
    :cond_0
    array-length v2, v1

    if-lt v2, v7, :cond_1

    .line 1154
    aget-object v1, v1, v6

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 1155
    iput-object v3, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 1159
    :cond_1
    :goto_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getAudioCodecInfo()Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1161
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1162
    array-length v2, v1

    if-lt v2, v4, :cond_2

    .line 1163
    aget-object v2, v1, v6

    iput-object v2, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 1164
    aget-object v1, v1, v7

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    goto :goto_1

    .line 1165
    :cond_2
    array-length v2, v1

    if-lt v2, v7, :cond_3

    .line 1166
    aget-object v1, v1, v6

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 1167
    iput-object v3, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 1172
    :cond_3
    :goto_1
    :try_start_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->parse(Landroid/os/Bundle;)Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    move-result-object v1

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 1174
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .line 1315
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public native getPlayableDuration()J
.end method

.method public getSavedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 436
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/utils/SPUtils;->getSwitcherValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const-string v2, "-"

    .line 439
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 441
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 442
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-static {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 446
    :cond_0
    sget-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "[getSavedPath] can\'t find idx"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_1
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSavedPath] get invalid savedStr from SPUtils ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSpeed(F)V
    .locals 1

    const/16 v0, 0x2713

    .line 591
    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    return-void
.end method

.method public native getStatInfo(Ltv/danmaku/ijk/media/player/StatInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getSubtitleState()I
    .locals 1

    .line 1059
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSubtitleState:I

    return v0
.end method

.method public getTextureName()I
    .locals 2

    .line 1308
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->HARDWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->draw2surface:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1311
    :cond_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getTextureId()I

    move-result v0

    return v0

    .line 1309
    :cond_1
    :goto_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    return v0
.end method

.method public getTransformMatrix()[F
    .locals 1

    .line 309
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    return-object v0
.end method

.method public getTransformMatrixFlipV()[F
    .locals 1

    .line 314
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrixFlipV:[F

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1040
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1050
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1045
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1035
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isMediaCodec()Z
    .locals 2

    .line 2170
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->HARDWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native isPlaying()Z
.end method

.method public native onGLSurfaceChanged(II)V
.end method

.method public native onGLSurfaceCreated()V
.end method

.method public parseAddedConfig()V
    .locals 7

    .line 469
    :try_start_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->addedConfig:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "useSubtitle"

    .line 471
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 472
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->addedConfig:Lorg/json/JSONObject;

    const-string v2, "audioLanguage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->addedConfig:Lorg/json/JSONObject;

    const-string v3, "subtitleLanguage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "enable-subtitle"

    int-to-long v5, v0

    .line 474
    invoke-virtual {p0, v3, v4, v5, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 475
    invoke-virtual {p0, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->addedConfig:Lorg/json/JSONObject;

    const-string v1, "saveToLocal"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "null"

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSaveToLocal(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 483
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 957
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    const/4 v0, 0x4

    .line 958
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 959
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_pause()V

    return-void
.end method

.method public pauseVideoDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 971
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_pausedisplay()V

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_prepareAsync()V

    return-void
.end method

.method public native redraw()V
.end method

.method public native redrawTexture(II)V
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    .line 1094
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 1095
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1096
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 1097
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->resetListeners()V

    .line 1098
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 1099
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    sget-object v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->SOFTWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 1101
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTextureName()I

    move-result v1

    if-lez v1, :cond_2

    new-array v2, v3, [I

    aput v1, v2, v0

    .line 1103
    invoke-static {v3, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_0

    .line 1107
    :cond_0
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    if-lez v1, :cond_1

    new-array v2, v3, [I

    aput v1, v2, v0

    .line 1109
    invoke-static {v3, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1112
    :cond_1
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->releaseSurface()V

    .line 1114
    :cond_2
    :goto_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_release()V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 1125
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 1126
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 1127
    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mPanorama:I

    invoke-direct {p0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_reset(I)V

    .line 1129
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1131
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    .line 1132
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return-void
.end method

.method public resetListeners()V
    .locals 1

    .line 1595
    invoke-super {p0}, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->resetListeners()V

    const/4 v0, 0x0

    .line 1596
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    return-void
.end method

.method public resumeVideoDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 965
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_resumedisplay()V

    return-void
.end method

.method public native seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setAvCodecOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1204
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setAvCodecOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1200
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAvOption(Ltv/danmaku/ijk/media/player/option/AvFormatOption;)V
    .locals 1

    .line 1196
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/option/AvFormatOption;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/option/AvFormatOption;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCrop(ZII)V
    .locals 0

    .line 638
    invoke-direct {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setCropMode(ZII)V

    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    .line 1495
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 904
    sput-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 905
    invoke-direct {p0, p1, v0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 910
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    return-void
.end method

.method public setDataSourceAsFFConcatContent(Ljava/lang/String;)V
    .locals 0

    .line 925
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mFFConcatContent:Ljava/lang/String;

    return-void
.end method

.method public native setDecodeRawData(I)V
.end method

.method public setDevMode(I)V
    .locals 1

    .line 363
    sput p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDevMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "http://192.168.229.163:18899/query?content="

    .line 366
    sput-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStatLogUrl:Ljava/lang/String;

    .line 367
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDevMode(Z)V

    :cond_0
    return-void
.end method

.method public native setDevMode(Z)V
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 840
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 843
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 847
    :goto_0
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 848
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public native setDomain()V
.end method

.method public setFrameDrop(I)V
    .locals 0

    .line 1232
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setFrameDrop(I)V

    return-void
.end method

.method public setHardDecodeTexture(I)V
    .locals 0

    .line 816
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mTextureId:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 411
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setLanguage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLoopLocalFileNumber(I)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLoopNumber(I)V

    return-void
.end method

.method public setMediaCodecEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1257
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1258
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 1260
    :try_start_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 1262
    :catchall_0
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setMediaCodecEnabled(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1272
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setMediaCodecEnabled(Z)V

    return-void
.end method

.method public native setMuted(I)V
.end method

.method public setNotifyIsFreeStreamListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;)V
    .locals 0

    .line 347
    sput-object p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNotifyIsFreeStreamListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

    return-void
.end method

.method public setOnControlMessageListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    return-void
.end method

.method public setOnGetVbrListListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;)V
    .locals 0

    .line 342
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnGetVideoUrlListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

    return-void
.end method

.method public setOnMediaCodecSelectListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;)V
    .locals 0

    .line 1591
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    return-void
.end method

.method public setOnReUpdateTextureListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;)V
    .locals 0

    .line 333
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRequestUpdateTexture:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;

    return-void
.end method

.method public setOnReportStatics(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;)V
    .locals 1

    .line 353
    sget-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->utilInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 354
    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->utilInitialized:Z

    .line 355
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/utils/SNUtils;->Init(Landroid/content/Context;)V

    .line 358
    :cond_0
    sput-object p2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnReportStatics:Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;

    return-void
.end method

.method public setOnVideoDecoderSelectedListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;)V
    .locals 0

    .line 677
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->myOnVideoDecoderSelectedListener:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;

    return-void
.end method

.method public setOpenSLESEnabled(Z)V
    .locals 0

    .line 1280
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOpenSLESEnabled(Z)V

    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 0

    .line 1212
    invoke-direct {p0, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setOverlayFormat(I)V
    .locals 0

    .line 1222
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOverlayFormat(I)V

    return-void
.end method

.method public native setPlayControlParameters(ZZIIII)V
.end method

.method public setPlayerConfig(Ltv/danmaku/ijk/media/player/PlayerConfig;)V
    .locals 0

    .line 699
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPlayerConfig(Ltv/danmaku/ijk/media/player/PlayerConfig;)V

    return-void
.end method

.method public setPlayerSetting(ZZ)V
    .locals 0

    .line 1747
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->default_player_setting_:Z

    .line 1748
    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->cell_playersetting_:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1752
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->no_playersetting_:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1750
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->no_playersetting_:Z

    :goto_1
    return-void
.end method

.method public native setRadicalRealTimeFlag(Z)V
.end method

.method public setRawDecoderListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRawDecodeListener;)V
    .locals 0

    .line 337
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnRawDecoderListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRawDecodeListener;

    return-void
.end method

.method public setRenderSurfaceEnabled(Z)V
    .locals 0

    .line 1276
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->draw2surface:Z

    return-void
.end method

.method public setSaveToLocal(Ljava/lang/String;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setSaveToLocal(Ljava/lang/String;)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .line 1004
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 1005
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1006
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1010
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/16 v0, 0x2713

    .line 587
    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyFloat(IF)V

    return-void
.end method

.method public setStartSeekPos(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 1285
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setStartSeekPos(I)V

    goto :goto_0

    .line 1287
    :cond_0
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:start seek pos  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " <= 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 872
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 873
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 876
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 877
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 878
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1241
    :try_start_0
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initSurfaceWithTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    .line 1242
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setMediaCodecEnabled(Z)V

    .line 1243
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    .line 1247
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setMediaCodecEnabled(Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSwScaleOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1208
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setSwScaleOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native setTextureId(I)V
.end method

.method public native setUseLibYuv(I)V
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3

    .line 984
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 985
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 987
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 989
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "power"

    .line 993
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 994
    const-class v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 995
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 994
    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 996
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    .line 998
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 939
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    const/4 v0, 0x3

    .line 940
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 941
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 948
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    const/4 v0, 0x4

    .line 949
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 950
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_stop()V

    return-void
.end method

.method public stopPlay()V
    .locals 3

    .line 596
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stRender:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->stop()V

    .line 599
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 600
    :cond_1
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_stop()V

    .line 601
    iput v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    .line 603
    :cond_2
    invoke-direct {p0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 604
    iput v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCurrentState:I

    return-void
.end method

.method public updateTextureContent()V
    .locals 9

    .line 611
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mode:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->SOFTWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->draw2surface:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->rawData:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 612
    :cond_1
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->redraw()V

    goto :goto_1

    .line 614
    :cond_2
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 620
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 621
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 622
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrixFlipV:[F

    const/4 v4, 0x0

    iget-object v5, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSTMatrix:[F

    const/4 v6, 0x0

    sget-object v7, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mtxFlipV:[F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 626
    :try_start_2
    sget-object v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "==========updateTexImage expetion========"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    :cond_3
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
