.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraControlSessionCallback$CvqA0Mwu3XCwbtARDhMAve6JDW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraControlSessionCallback$CvqA0Mwu3XCwbtARDhMAve6JDW0;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraControlSessionCallback$CvqA0Mwu3XCwbtARDhMAve6JDW0;->f$1:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraControlSessionCallback$CvqA0Mwu3XCwbtARDhMAve6JDW0;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$CameraControlSessionCallback$CvqA0Mwu3XCwbtARDhMAve6JDW0;->f$1:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CameraControlSessionCallback;->lambda$onCaptureCompleted$0$Camera2CameraControlImpl$CameraControlSessionCallback(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
