.class public abstract Ltv/danmaku/ijk/media/player/BaseMediaPlayer;
.super Ljava/lang/Object;
.source "BaseMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;


# instance fields
.field private mIsLogEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

.method public isLogEnabled()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/BaseMediaPlayer;->mIsLogEnabled:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/BaseMediaPlayer;->mIsLogEnabled:Z

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
