.class public Lcom/netease/neox/CCPlayer;
.super Ljava/lang/Object;
.source "CCPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_curVbr:Ljava/lang/String;

.field private m_device_id:Ljava/lang/String;

.field private m_extra_info:Ljava/lang/String;

.field private m_game_uid:I

.field private m_handle:J

.field private m_height:I

.field private m_is_free_flow:Z

.field private m_is_video_ready:Z

.field private m_loop_count:I

.field private m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field private m_src:Ljava/lang/String;

.field private m_update_texture:Z

.field private m_url:Ljava/lang/String;

.field private m_urs:Ljava/lang/String;

.field private m_vbrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    .line 22
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 23
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    .line 26
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    const-string v2, ""

    .line 27
    iput-object v2, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    .line 29
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    .line 30
    iput-object v2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    const-wide/16 v2, 0x0

    .line 34
    iput-wide v2, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    .line 35
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 36
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    .line 54
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    return-void
.end method

.method private initPlayer()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDevMode(Z)V

    .line 75
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setMediaCodecEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setRenderSurfaceEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnGetVbrListListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;)V

    .line 78
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 79
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnReUpdateTextureListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;)V

    .line 80
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 81
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnReportStatics(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;)V

    .line 82
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 83
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setNotifyIsFreeStreamListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;)V

    .line 84
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget v1, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLoopLocalFileNumber(I)V

    :cond_0
    return-void
.end method

.method public static native nativeOnError(J)V
.end method

.method public static native nativeOnFreeFlow(JZ)V
.end method

.method public static native nativeOnGetVbrList(JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method public static native nativeOnReportStat(JLjava/lang/String;)V
.end method

.method public static native nativeOnSeekComplete(J)V
.end method

.method public static native nativeOnVideoComplete(J)V
.end method

.method public static native nativeOnVideoReady(J)V
.end method


# virtual methods
.method destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/netease/neox/CCPlayer;->setHandle(J)V

    .line 59
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_0
    return-void
.end method

.method public enableFreeFlow(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    return v0
.end method

.method public getTextureName()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTextureName()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    return v0
.end method

.method public isFreeFlowEnabled()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    return-void
.end method

.method public notifyIsFreeStream(I)V
    .locals 5

    .line 401
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 403
    iget-boolean v2, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 404
    :goto_0
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    if-eqz v2, :cond_1

    .line 406
    invoke-static {v0, v1, p1}, Lcom/netease/neox/CCPlayer;->nativeOnFreeFlow(JZ)V

    .line 408
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 376
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnVideoComplete(J)V

    .line 378
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/netease/neox/CCPlayer;->setHandle(J)V

    .line 326
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_0
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    const-string p1, "NeoXCCPlayer"

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 351
    invoke-static {p1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 352
    :cond_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPause()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pauseVideoDisplay()V

    .line 320
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setMuted(I)V

    :cond_0
    return-void
.end method

.method public onRequestUpdateTexture()V
    .locals 6

    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    .line 361
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    :cond_0
    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 364
    iget-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 365
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 366
    invoke-static {v1, v2}, Lcom/netease/neox/CCPlayer;->nativeOnVideoReady(J)V

    .line 368
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->resumeVideoDisplay()V

    .line 313
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setMuted(I)V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4

    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 394
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnSeekComplete(J)V

    .line 396
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 257
    :try_start_0
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 260
    monitor-enter p0

    .line 261
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 262
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 264
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public playLive(Ljava/lang/String;)V
    .locals 13

    .line 89
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/netease/neox/CCPlayer;->initPlayer()V

    .line 91
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    const-wide/16 v11, 0x0

    if-eqz v3, :cond_8

    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "mrlucc@126.com"

    :cond_3
    move-object v4, v0

    .line 107
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move-object v7, v0

    goto :goto_3

    .line 110
    :cond_5
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v0, 0x0

    const-string v1, "NeoXCCPlayer"

    const-string v2, "getDeviceId failed"

    .line 113
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v0, :cond_4

    const-string v0, "whatever"

    goto :goto_0

    .line 118
    :goto_3
    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    int-to-long v5, v0

    iget-object v8, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->StartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_7

    .line 119
    monitor-enter p0

    .line 120
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    cmp-long p1, v0, v11

    if-eqz p1, :cond_6

    .line 121
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 123
    :cond_6
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_4
    return-void

    .line 96
    :cond_8
    :goto_5
    monitor-enter p0

    .line 97
    :try_start_2
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    cmp-long p1, v0, v11

    if-eqz p1, :cond_9

    .line 98
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 100
    :cond_9
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public playVOD(Ljava/lang/String;)V
    .locals 4

    .line 136
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcom/netease/neox/CCPlayer;->initPlayer()V

    .line 138
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->StartPlay(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 143
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 145
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public reportHttpStatics(Ljava/lang/String;)V
    .locals 5

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 385
    invoke-static {v0, v1, p1}, Lcom/netease/neox/CCPlayer;->nativeOnReportStat(JLjava/lang/String;)V

    .line 387
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 275
    monitor-enter p0

    .line 276
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 277
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 279
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 287
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 290
    monitor-enter p0

    .line 291
    :try_start_1
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 292
    invoke-static {p1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 294
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 161
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setHandle(J)V
    .locals 0

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iput-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLoopCount(I)V
    .locals 1

    .line 300
    iput p1, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    .line 301
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLoopLocalFileNumber(I)V

    :cond_0
    return-void
.end method

.method public setUserInfo(ILjava/lang/String;)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    .line 156
    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    return-void
.end method

.method public setVbr(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 193
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 200
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 204
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_4

    .line 205
    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 206
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_4
    if-eqz v2, :cond_5

    .line 211
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 212
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/neox/CCPlayer;->playLive(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public setVbrList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    .line 335
    iget-object p2, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz p2, :cond_1

    .line 336
    invoke-virtual {p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPlayVbr()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 339
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 340
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    iget-object v2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/netease/neox/CCPlayer;->nativeOnGetVbrList(JLjava/lang/String;[Ljava/lang/String;)V

    .line 342
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnGetVbrListListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;)V

    .line 169
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 170
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnReUpdateTextureListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnRequestUpdateTexture;)V

    .line 171
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 172
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v2, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnReportStatics(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer$onReportStatics;)V

    .line 173
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 174
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setNotifyIsFreeStreamListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;)V

    .line 175
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 176
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 177
    iput-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_0
    return-void
.end method

.method public updateExternal()V
    .locals 2

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 228
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 229
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateTextureContent()V

    .line 231
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
