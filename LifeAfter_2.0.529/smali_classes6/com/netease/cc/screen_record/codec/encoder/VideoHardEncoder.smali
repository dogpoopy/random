.class public Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;
.super Ljava/lang/Object;
.source "VideoHardEncoder.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/encoder/FrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;
    }
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "VideoHardEncoder"


# instance fields
.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCallback:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;

.field private mCodecCallback:Landroid/media/MediaCodec$Callback;

.field private mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

.field private mEncoderListener:Lcom/netease/cc/screen_record/codec/encoder/TextureEncoderListener;

.field private mEncoderStartTime:J

.field private mInfo:[B

.field private mInputSurface:Landroid/view/Surface;

.field private mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutData:[B

.field private mbRecording:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    .line 30
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    .line 31
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputSurface:Landroid/view/Surface;

    .line 32
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 34
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderListener:Lcom/netease/cc/screen_record/codec/encoder/TextureEncoderListener;

    .line 35
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mOutData:[B

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderStartTime:J

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mbRecording:Z

    .line 148
    new-instance v0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;

    invoke-direct {v0, p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;-><init>(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mCodecCallback:Landroid/media/MediaCodec$Callback;

    .line 55
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;)Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;

    return-object p0
.end method

.method private initMediaCodec(IIIIF)V
    .locals 4

    const-string v0, "VideoHardEncoder"

    const-string v1, "video/avc"

    const-string v2, "i-frame-interval"

    .line 108
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v3, :cond_4

    .line 110
    :try_start_0
    invoke-static {v1, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "color-format"

    const v3, 0x7f000789

    .line 114
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "bitrate"

    mul-int/lit16 p4, p4, 0x3e8

    .line 115
    invoke-virtual {p1, p2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "frame-rate"

    .line 116
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 117
    invoke-virtual {p1, v2, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 118
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x19

    const/4 v3, 0x0

    if-lt p3, p4, :cond_1

    cmpl-float p3, p5, v3

    if-ltz p3, :cond_0

    move p3, p5

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 119
    :goto_0
    invoke-virtual {p1, v2, p3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_2

    :cond_1
    cmpl-float p3, p5, v3

    if-ltz p3, :cond_2

    float-to-int p3, p5

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    .line 121
    :goto_1
    invoke-virtual {p1, v2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 123
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "keyframe interval "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 127
    iget-object p3, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;

    const/4 p5, 0x0

    if-nez p4, :cond_3

    move-object p4, p5

    goto :goto_3

    :cond_3
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mCodecCallback:Landroid/media/MediaCodec$Callback;

    :goto_3
    invoke-virtual {p3, p4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 128
    iget-object p3, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p3, p1, p5, p5, p2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 129
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputSurface:Landroid/view/Surface;

    const-string p1, "===============create input surface============="

    .line 130
    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method private releaseEncoder()V
    .locals 2

    const/4 v0, 0x0

    .line 236
    :try_start_0
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mbRecording:Z

    .line 237
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 239
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 240
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 245
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputSurface:Landroid/view/Surface;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/encoder/EglCore;->release()V

    .line 250
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->release()V

    .line 255
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setStartTime()V
    .locals 9

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 97
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderListener:Lcom/netease/cc/screen_record/codec/encoder/TextureEncoderListener;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 98
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

    .line 101
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderStartTime:J

    goto :goto_1

    .line 103
    :cond_1
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderStartTime:J

    .line 104
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartRecording record video start time is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " audio start time is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoHardEncoder"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public frameAvailable(ILandroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 173
    iget-wide p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderStartTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderStartTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    mul-long p1, p1, v0

    .line 178
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->setPresentationTime(J)V

    .line 179
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->swapBuffers()Z

    return-void
.end method

.method protected final getEncoder()Landroid/media/MediaCodec;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-string v1, "doesn\'t prepare()"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public makeEncoderSurfaceCurrent()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->makeCurrent()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    return-void
.end method

.method public pauseEncode()V
    .locals 0

    return-void
.end method

.method public final queueInputBuffer(IIIJI)V
    .locals 7

    .line 221
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->releaseEncoder()V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInfo:[B

    .line 266
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 267
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEncoderListener:Lcom/netease/cc/screen_record/codec/encoder/TextureEncoderListener;

    return-void
.end method

.method public final releaseOutputBuffer(I)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public resumeEncode()V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;

    return-void
.end method

.method public setSharedContext(Landroid/opengl/EGLContext;)V
    .locals 0

    return-void
.end method

.method public startEncode()V
    .locals 0

    return-void
.end method

.method public startEncode(IIIIF)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 61
    :try_start_0
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mbRecording:Z

    .line 62
    new-instance v2, Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/netease/cc/screen_record/codec/encoder/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    .line 63
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->setStartTime()V

    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->initMediaCodec(IIIIF)V

    .line 65
    new-instance p5, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputSurface:Landroid/view/Surface;

    invoke-direct {p5, v2, v3, v1}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;-><init>(Lcom/netease/cc/screen_record/codec/encoder/EglCore;Landroid/view/Surface;Z)V

    iput-object p5, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mInputWindowSurface:Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;

    .line 66
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->makeEncoderSurfaceCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p5

    .line 69
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mbRecording:Z

    .line 70
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start encoder failed! width("

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") height("

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") fps("

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") vbr("

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoHardEncoder"

    invoke-static {p2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public stopEncode()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->mbRecording:Z

    .line 192
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->releaseEncoder()V

    return-void
.end method
