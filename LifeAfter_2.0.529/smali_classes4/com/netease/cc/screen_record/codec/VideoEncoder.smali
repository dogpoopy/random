.class public Lcom/netease/cc/screen_record/codec/VideoEncoder;
.super Lcom/netease/cc/screen_record/codec/BaseEncoder;
.source "VideoEncoder.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/encoder/FrameListener;


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mConfig:Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;

.field private mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

.field private mEncoderListener:Lcom/netease/cc/screen_record/codec/encoder/TextureEncoderListener;

.field private mEncoderStartTime:J

.field private mInputSurface:Landroid/view/Surface;

.field private mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

.field private mLastEncoderPauseTimeMs:J

.field private mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSharedContext:Landroid/opengl/EGLContext;

.field private mSkipEncodeDurationMs:J

.field private mStartTimeMs:J

.field private mbRecording:Z


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;)V
    .locals 4

    .line 53
    iget-object v0, p1, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->codecName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;-><init>(Ljava/lang/String;)V

    const-string v0, "VideoEncoder"

    .line 36
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    .line 39
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    .line 40
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 42
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoderListener:Lcom/netease/cc/screen_record/codec/encoder/TextureEncoderListener;

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoderStartTime:J

    const/4 v3, 0x0

    .line 44
    iput-boolean v3, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mbRecording:Z

    .line 46
    iput-wide v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSkipEncodeDurationMs:J

    .line 47
    iput-wide v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mLastEncoderPauseTimeMs:J

    .line 48
    iput-wide v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mStartTimeMs:J

    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSharedContext:Landroid/opengl/EGLContext;

    .line 54
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mConfig:Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;

    return-void
.end method

.method private initMediaCodec(IIIIF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_4

    const-string v0, "video/avc"

    .line 84
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const v2, 0x7f000789

    const-string v3, "color-format"

    .line 85
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate"

    .line 86
    invoke-virtual {v1, v2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x2

    const-string v3, "bitrate-mode"

    .line 87
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    .line 88
    invoke-virtual {v1, v2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    const/4 v4, 0x1

    const-string v5, "i-frame-interval"

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p5, v2

    if-ltz v2, :cond_0

    move v2, p5

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 90
    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_2

    :cond_1
    float-to-int v2, p5

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    .line 92
    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 94
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fps "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vbr "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[CCR]"

    invoke-static {p2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "keyframe interval "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "v format "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 98
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    const/4 p3, 0x0

    if-nez p2, :cond_3

    move-object p2, p3

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mCodecCallback:Landroid/media/MediaCodec$Callback;

    :goto_3
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 99
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v1, p3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 100
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 101
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    :cond_4
    return-void
.end method

.method private setStartTime()V
    .locals 9

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 109
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoderListener:Lcom/netease/cc/screen_record/codec/encoder/TextureEncoderListener;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 110
    invoke-interface {v4}, Lcom/netease/cc/screen_record/codec/encoder/TextureEncoderListener;->getAudioStartTime()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    cmp-long v4, v7, v5

    if-lez v4, :cond_1

    sub-long/2addr v2, v7

    sub-long/2addr v0, v2

    .line 113
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoderStartTime:J

    goto :goto_1

    .line 115
    :cond_1
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoderStartTime:J

    :goto_1
    return-void
.end method


# virtual methods
.method protected createMediaFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mConfig:Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->toFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public frameAvailable(ILandroid/graphics/SurfaceTexture;)V
    .locals 6

    .line 133
    iget-wide p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoderStartTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    if-eqz p1, :cond_3

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoderStartTime:J

    sub-long/2addr p1, v2

    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSkipEncodeDurationMs:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    mul-long p1, p1, v2

    .line 138
    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mStartTimeMs:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mStartTimeMs:J

    .line 142
    :cond_1
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getEncLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video output pts/ms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0xf4240

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Elapsed time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mStartTimeMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " skipDuration  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSkipEncodeDurationMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->setPresentationTime(J)V

    .line 145
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->swapBuffers()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public makeEncoderSurfaceCurrent()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->makeCurrent()V

    return-void
.end method

.method protected onEncoderConfigured(Landroid/media/MediaCodec;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    invoke-virtual {v0, p0, p1}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSharedContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    return-void
.end method

.method public pauseEncode()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Pause video encoding."

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mLastEncoderPauseTimeMs:J

    :cond_0
    return-void
.end method

.method public bridge synthetic prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->prepare()V

    return-void
.end method

.method public release()V
    .locals 4

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "[CCR]"

    const-string v3, "catch IllegalStateException when stop encoder."

    .line 164
    invoke-static {v2, v3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 169
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 173
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->release()V

    .line 178
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/encoder/EglCore;->release()V

    .line 183
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    .line 185
    :cond_3
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSharedContext:Landroid/opengl/EGLContext;

    const-wide/16 v0, 0x0

    .line 186
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSkipEncodeDurationMs:J

    .line 187
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "=============release video encoder=============="

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 190
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "=============release Exception=============="

    invoke-static {v1, v2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public resumeEncode()V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 223
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSkipEncodeDurationMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mLastEncoderPauseTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSkipEncodeDurationMs:J

    .line 224
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume video encoding. Pause duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSkipEncodeDurationMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setCallback(Lcom/netease/cc/screen_record/codec/Encoder$Callback;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->setCallback(Lcom/netease/cc/screen_record/codec/Encoder$Callback;)V

    return-void
.end method

.method public setSharedContext(Landroid/opengl/EGLContext;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " set shared context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSharedContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method public startEncode()V
    .locals 0

    return-void
.end method

.method public startEncode(IIIIF)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    :try_start_0
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mbRecording:Z

    .line 61
    new-instance v2, Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSharedContext:Landroid/opengl/EGLContext;

    invoke-direct {v2, v3, v1}, Lcom/netease/cc/screen_record/codec/encoder/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    const-string v2, "[CCR]"

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GameTex startEncode. shared context-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSharedContext:Landroid/opengl/EGLContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/VideoEncoder;->setStartTime()V

    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/netease/cc/screen_record/codec/VideoEncoder;->initMediaCodec(IIIIF)V

    .line 65
    new-instance p1, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    iget-object p3, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    invoke-direct {p1, p2, p3, v1}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;-><init>(Lcom/netease/cc/screen_record/codec/encoder/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    .line 66
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/VideoEncoder;->makeEncoderSurfaceCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mbRecording:Z

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mPauseEncoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 p1, 0x0

    .line 73
    iput-wide p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncoder;->mSkipEncodeDurationMs:J

    return v1
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->stop()V

    return-void
.end method

.method public stopEncode()V
    .locals 0

    return-void
.end method
