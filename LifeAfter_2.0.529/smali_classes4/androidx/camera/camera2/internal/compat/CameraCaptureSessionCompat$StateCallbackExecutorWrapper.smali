.class final Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraCaptureSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateCallbackExecutorWrapper"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 378
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 379
    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActive$3$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public synthetic lambda$onCaptureQueueEmpty$4$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 406
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/compat/ApiCompat$Api26Impl;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public synthetic lambda$onClosed$5$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 412
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public synthetic lambda$onConfigureFailed$1$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 389
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public synthetic lambda$onConfigured$0$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 384
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public synthetic lambda$onReady$2$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 394
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public synthetic lambda$onSurfacePrepared$6$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-static {v0, p1, p2}, Landroidx/camera/camera2/internal/compat/ApiCompat$Api23Impl;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method

.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 399
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$EWJFAtUQFAQfLXM2IsEgCsbWTqo;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$EWJFAtUQFAQfLXM2IsEgCsbWTqo;-><init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 405
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$SiS3j4-FGGNjmCwtw1ioFKPdYUw;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$SiS3j4-FGGNjmCwtw1ioFKPdYUw;-><init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 412
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$PPyLQ0ShgRHvXy6f4FI0coBCWJM;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$PPyLQ0ShgRHvXy6f4FI0coBCWJM;-><init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 389
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$tVQplODqOmdNiXOqoDZsfzYUkmE;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$tVQplODqOmdNiXOqoDZsfzYUkmE;-><init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 384
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$_Z6ZHm0dE2kV2Wh_l2CVswU5OfU;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$_Z6ZHm0dE2kV2Wh_l2CVswU5OfU;-><init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 394
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$wpYQr6P2zqTpXO3Z-ud9pp5oCYw;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$wpYQr6P2zqTpXO3Z-ud9pp5oCYw;-><init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 2

    .line 419
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;-><init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
