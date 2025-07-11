.class public final synthetic Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic f$2:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;->f$2:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$AQ38-QXGcQc0UXCQkOunqRkK5dU;->f$2:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->lambda$onSurfacePrepared$6$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method
