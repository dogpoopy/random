.class public final synthetic Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic f$3:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;->f$3:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$8-0Z5Cn4Iql9Is-vEUXPIkv3xdY;->f$3:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;->lambda$onCaptureProgressed$1$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
