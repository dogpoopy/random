.class public Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;
.super Ljava/lang/Object;
.source "VideoDecoderOutput.java"


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final NEW_IMAGE_TIMEOUT_MILLIS:J = 0x2710L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFrameAvailable:Z

.field private final mFrameAvailableLock:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I

.field private mtx:[F

.field private program:Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mTextureId:I

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailableLock:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 145
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mtx:[F

    .line 47
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->program:Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;

    .line 48
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->program:Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->getTextureId()I

    move-result v0

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mTextureId:I

    .line 53
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 54
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput$1;

    invoke-direct {v1, p0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput$1;-><init>(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 67
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static synthetic access$000()Lcom/netease/cc/videoedit/transcoder/internal/Logger;
    .locals 1

    .line 30
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailableLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z

    return p0
.end method

.method static synthetic access$202(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z

    return p1
.end method

.method private awaitNewFrame()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 129
    :try_start_1
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailableLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 130
    iget-boolean v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 136
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z

    .line 140
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_0
    move-exception v1

    .line 140
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private drawNewFrame()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mtx:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 168
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->program:Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mtx:[F

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->draw(Landroid/graphics/SurfaceTexture;[F)V

    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->awaitNewFrame()V

    .line 115
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->drawNewFrame()V

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    .line 106
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 87
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->TAG:Ljava/lang/String;

    const-string v0, "we have NOT support set rotation yet."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    .line 76
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->TAG:Ljava/lang/String;

    const-string p2, "we have NOT support set scale yet."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
