.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$qxKrL_l8nv127m7apandC-MqfQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/TorchControl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/TorchControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$qxKrL_l8nv127m7apandC-MqfQM;->f$0:Landroidx/camera/camera2/internal/TorchControl;

    return-void
.end method


# virtual methods
.method public final onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$qxKrL_l8nv127m7apandC-MqfQM;->f$0:Landroidx/camera/camera2/internal/TorchControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/TorchControl;->lambda$new$0$TorchControl(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
