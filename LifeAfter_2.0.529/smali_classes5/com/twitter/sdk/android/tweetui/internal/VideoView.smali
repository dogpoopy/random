.class public Lcom/twitter/sdk/android/tweetui/internal/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mLooping:Z

.field private mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string p1, "VideoView"

    .line 56
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    .line 73
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 76
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 257
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$1;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$1;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 268
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 315
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$3;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$3;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 325
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$4;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$4;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 334
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$5;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$5;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 353
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$6;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$6;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 360
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$7;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$7;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->gestureDetector:Landroid/view/GestureDetector;

    .line 419
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 93
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "VideoView"

    .line 56
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    .line 73
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 76
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 257
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$1;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$1;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 268
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 315
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$3;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$3;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 325
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$4;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$4;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 334
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$5;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$5;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 353
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$6;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$6;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 360
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/twitter/sdk/android/tweetui/internal/VideoView$7;

    invoke-direct {p3, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$7;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->gestureDetector:Landroid/view/GestureDetector;

    .line 419
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 102
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->toggleMediaControlsVisiblity()V

    return-void
.end method

.method static synthetic access$1702(Lcom/twitter/sdk/android/tweetui/internal/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/twitter/sdk/android/tweetui/internal/VideoView;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$700(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$702(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$802(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$902(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    return p1
.end method

.method private attachMediaController()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setMediaPlayer(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;)V

    .line 253
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initVideoView()V
    .locals 3

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    .line 166
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    .line 167
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 168
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    .line 169
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setFocusable(Z)V

    .line 170
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setFocusableInTouchMode(Z)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setClickable(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->requestFocus()Z

    .line 173
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    .line 174
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openVideo()V
    .locals 6

    .line 202
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->release(Z)V

    const/4 v1, 0x1

    .line 210
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 211
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mAudioSession:I

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mAudioSession:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v2

    iput v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mAudioSession:I

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 217
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 218
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 219
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 220
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 221
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 222
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentBufferPercentage:I

    .line 223
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mLooping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 224
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 225
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 226
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 227
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 228
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 232
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    .line 233
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 235
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    .line 236
    iput v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    .line 237
    iput v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    .line 238
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v1, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private release(Z)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 456
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 460
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->hide()V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBufferPercentage()I
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 566
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 542
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 534
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 560
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 473
    :goto_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 485
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    .line 487
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->hide()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 498
    :cond_4
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_4

    .line 492
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 493
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->pause()V

    .line 494
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->show()V

    :cond_6
    return v0

    .line 476
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 477
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->pause()V

    .line 478
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->show()V

    goto :goto_3

    .line 480
    :cond_8
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    .line 481
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->hide()V

    :goto_3
    return v0

    .line 501
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 109
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 110
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 111
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    if-lez v2, :cond_9

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 115
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 121
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int v0, v0, p2

    .line 123
    div-int/2addr v0, v2

    move v1, p2

    goto :goto_3

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_5

    mul-int v2, v2, p1

    .line 126
    div-int v1, v2, v0

    goto :goto_4

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 131
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    .line 139
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    :goto_0
    goto :goto_1

    :cond_4
    move p1, v1

    :cond_5
    :goto_1
    move v1, p2

    goto :goto_4

    .line 146
    :cond_6
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    .line 147
    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v2, v2, p2

    .line 151
    div-int/2addr v2, v4

    move v1, p2

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    if-ne v0, v3, :cond_8

    if-le v2, p1, :cond_8

    .line 156
    iget p2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoHeight:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mVideoWidth:I

    div-int v1, p2, v0

    goto :goto_4

    :cond_8
    move p1, v2

    goto :goto_4

    :cond_9
    :goto_3
    move p1, v0

    .line 161
    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public pause()V
    .locals 2

    .line 523
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 526
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    .line 529
    :cond_0
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 550
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 552
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 554
    :cond_0
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setMediaController(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->hide()V

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaController:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    .line 247
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Z)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mUri:Landroid/net/Uri;

    .line 184
    iput-boolean p2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mLooping:Z

    const/4 p1, 0x0

    .line 185
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mSeekWhenPrepared:I

    .line 186
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->openVideo()V

    .line 187
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->requestLayout()V

    .line 188
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 514
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 516
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    .line 518
    :cond_0
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 194
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mCurrentState:I

    .line 197
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->mTargetState:I

    :cond_0
    return-void
.end method
