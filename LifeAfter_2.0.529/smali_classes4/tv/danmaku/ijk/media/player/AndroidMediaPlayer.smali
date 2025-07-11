.class public Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
.super Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;
    }
.end annotation


# static fields
.field private static sMediaInfo:Ltv/danmaku/ijk/media/player/MediaInfo;


# instance fields
.field private mDataSource:Ljava/lang/String;

.field private mInitLock:Ljava/lang/Object;

.field private mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

.field private mInternalMediaPlayer:Landroid/media/MediaPlayer;

.field private mIsReleased:Z

.field private mKeepInBackground:Z

.field private mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInitLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$1;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$1;-><init>(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 46
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    .line 49
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 50
    new-instance v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-direct {v0, p0, p0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;-><init>(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    .line 51
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->attachInternalListeners()V

    return-void

    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mKeepInBackground:Z

    return p0
.end method

.method private final attachInternalListeners()V
    .locals 2

    .line 247
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 248
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    .line 249
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 250
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 251
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    .line 252
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 253
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    .line 254
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 255
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 256
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .line 169
    :try_start_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    .line 171
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 179
    :try_start_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    .line 181
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 3

    .line 210
    sget-object v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->sMediaInfo:Ltv/danmaku/ijk/media/player/MediaInfo;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ltv/danmaku/ijk/media/player/MediaInfo;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/MediaInfo;-><init>()V

    const-string v1, "android"

    .line 213
    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    const-string v2, "HW"

    .line 214
    iput-object v2, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 216
    iput-object v1, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 217
    iput-object v2, v0, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 219
    sput-object v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->sMediaInfo:Ltv/danmaku/ijk/media/player/MediaInfo;

    .line 222
    :cond_0
    sget-object v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->sMediaInfo:Ltv/danmaku/ijk/media/player/MediaInfo;

    return-object v0
.end method

.method public getStatInfo(Ltv/danmaku/ijk/media/player/StatInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public getVideoHeight()I
    .locals 1

    .line 138
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 133
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 154
    :try_start_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public pauseVideoDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mIsReleased:Z

    .line 189
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 191
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->resetListeners()V

    .line 192
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->attachInternalListeners()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 197
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 199
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->resetListeners()V

    .line 200
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->attachInternalListeners()V

    return-void
.end method

.method public resumeVideoDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 235
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 90
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 56
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mIsReleased:Z

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    if-eqz p1, :cond_0

    .line 60
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 62
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mKeepInBackground:Z

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 84
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 205
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 230
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
