.class public final synthetic Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic f$3:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;->f$3:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$xxSzEcTYNNa7_F-bi9IwLKtM1ZQ;->f$3:Landroid/hardware/camera2/CaptureFailure;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;->lambda$onCaptureFailed$3$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method
