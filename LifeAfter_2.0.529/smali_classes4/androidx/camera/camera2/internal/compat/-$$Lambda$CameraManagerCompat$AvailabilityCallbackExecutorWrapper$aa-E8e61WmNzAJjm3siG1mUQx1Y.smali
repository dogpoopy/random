.class public final synthetic Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraManagerCompat$AvailabilityCallbackExecutorWrapper$aa-E8e61WmNzAJjm3siG1mUQx1Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraManagerCompat$AvailabilityCallbackExecutorWrapper$aa-E8e61WmNzAJjm3siG1mUQx1Y;->f$0:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraManagerCompat$AvailabilityCallbackExecutorWrapper$aa-E8e61WmNzAJjm3siG1mUQx1Y;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraManagerCompat$AvailabilityCallbackExecutorWrapper$aa-E8e61WmNzAJjm3siG1mUQx1Y;->f$0:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraManagerCompat$AvailabilityCallbackExecutorWrapper$aa-E8e61WmNzAJjm3siG1mUQx1Y;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->lambda$onCameraUnavailable$2$CameraManagerCompat$AvailabilityCallbackExecutorWrapper(Ljava/lang/String;)V

    return-void
.end method
