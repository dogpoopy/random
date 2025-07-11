.class public Ltv/danmaku/ijk/media/player/Soft2TextureRender;
.super Ljava/lang/Object;
.source "Soft2TextureRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;
    }
.end annotation


# static fields
.field private static final MSG_DESTROY_EGL:I = 0x66

.field private static final MSG_DRAW:I = 0x65

.field private static final MSG_SETUP_EGL:I = 0x64


# instance fields
.field private TAG:Ljava/lang/String;

.field private handlerThread:Landroid/os/HandlerThread;

.field private initEgl:Z

.field private mCallback:Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;

.field private mEglContext:Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Soft2TextureRender"

    .line 15
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->initEgl:Z

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mLock:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 30
    iput-object p2, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mCallback:Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;

    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mEglContext:Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    return-object p0
.end method

.method static synthetic access$202(Ltv/danmaku/ijk/media/player/Soft2TextureRender;Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;
    .locals 0

    .line 14
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mEglContext:Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    return-object p1
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mCallback:Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;

    return-object p0
.end method


# virtual methods
.method public onRequestUpdateTexture(II)V
    .locals 3

    .line 34
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 36
    iget-boolean v2, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->initEgl:Z

    if-nez v2, :cond_0

    const/16 v2, 0x64

    .line 37
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->initEgl:Z

    .line 40
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 42
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public start()V
    .locals 3

    .line 50
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SW Draw Render Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->handlerThread:Landroid/os/HandlerThread;

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;-><init>(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public stop()V
    .locals 4

    .line 99
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v3, 0x66

    .line 101
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->mHandler:Landroid/os/Handler;

    .line 104
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 107
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 112
    :goto_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 113
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->handlerThread:Landroid/os/HandlerThread;

    .line 114
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->TAG:Ljava/lang/String;

    const-string v1, "sw draw handler quited."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 104
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
