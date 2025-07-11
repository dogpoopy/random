.class public abstract Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;
.super Ltv/danmaku/ijk/media/player/BaseMediaPlayer;
.source "SimpleMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;


# instance fields
.field private mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnFileSaveListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnFileSaveListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/BaseMediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public attachListeners(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 94
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 95
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 96
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 97
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 98
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 99
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 100
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method protected final notifyOnBufferingUpdate(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    :cond_0
    return-void
.end method

.method protected final notifyOnCaptureComplete(II[I)V
    .locals 1

    .line 124
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;->onCaptureComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;II[I)V

    :cond_0
    return-void
.end method

.method protected final notifyOnCompletion()V
    .locals 1

    .line 109
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnError(II)Z
    .locals 1

    .line 137
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final notifyOnFileSave(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnFileSaveListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnFileSaveListener;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnFileSaveListener;->onFileSave(I)V

    :cond_0
    return-void
.end method

.method protected final notifyOnInfo(II)Z
    .locals 1

    .line 143
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final notifyOnPrepared()V
    .locals 1

    .line 104
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnSeekComplete()V
    .locals 1

    .line 119
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnTimedText(Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;->onTimedText(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final notifyOnVideoSizeChanged(IIII)V
    .locals 6

    .line 131
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 132
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 82
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 83
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 84
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 85
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 86
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 87
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 88
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

    .line 89
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 90
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnFileSaveListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnFileSaveListener;

    return-void
.end method

.method public final setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public final setOnCaptureCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCaptureCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCaptureCompleteListener;

    return-void
.end method

.method public final setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public final setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setOnFileSaveListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnFileSaveListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnFileSaveListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnFileSaveListener;

    return-void
.end method

.method public final setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public final setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public final setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public final setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/SimpleMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method
