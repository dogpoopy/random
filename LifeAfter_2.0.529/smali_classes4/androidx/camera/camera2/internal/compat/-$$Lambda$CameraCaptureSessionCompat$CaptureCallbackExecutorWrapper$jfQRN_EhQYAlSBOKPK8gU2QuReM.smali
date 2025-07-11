.class public final synthetic Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput p3, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;->f$2:I

    iput-wide p4, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget v2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;->f$2:I

    iget-wide v3, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper$jfQRN_EhQYAlSBOKPK8gU2QuReM;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;->lambda$onCaptureSequenceCompleted$4$CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method
