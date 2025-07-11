.class public final synthetic Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;->f$0:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;->f$1:Landroid/hardware/camera2/CameraDevice;

    iput p3, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;->f$0:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;->f$1:Landroid/hardware/camera2/CameraDevice;

    iget v2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->lambda$onError$2$CameraDeviceCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method
