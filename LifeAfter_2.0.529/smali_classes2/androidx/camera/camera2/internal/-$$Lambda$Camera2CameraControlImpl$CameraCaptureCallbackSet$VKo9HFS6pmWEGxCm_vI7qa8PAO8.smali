.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraCaptureCallbackSet$VKo9HFS6pmWEGxCm_vI7qa8PAO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/CameraCaptureCallback;

.field public final synthetic f$1:Landroidx/camera/core/impl/CameraCaptureResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraCaptureCallbackSet$VKo9HFS6pmWEGxCm_vI7qa8PAO8;->f$0:Landroidx/camera/core/impl/CameraCaptureCallback;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraCaptureCallbackSet$VKo9HFS6pmWEGxCm_vI7qa8PAO8;->f$1:Landroidx/camera/core/impl/CameraCaptureResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraCaptureCallbackSet$VKo9HFS6pmWEGxCm_vI7qa8PAO8;->f$0:Landroidx/camera/core/impl/CameraCaptureCallback;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraCaptureCallbackSet$VKo9HFS6pmWEGxCm_vI7qa8PAO8;->f$1:Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-static {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraCaptureCallbackSet;->lambda$onCaptureCompleted$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/core/impl/CameraCaptureResult;)V

    return-void
.end method
