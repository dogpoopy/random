.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$ENbAOGLu-ybg0ZUJaTBBk4ZAfT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroidx/camera/core/impl/CameraCaptureCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$ENbAOGLu-ybg0ZUJaTBBk4ZAfT0;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$ENbAOGLu-ybg0ZUJaTBBk4ZAfT0;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$ENbAOGLu-ybg0ZUJaTBBk4ZAfT0;->f$2:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$ENbAOGLu-ybg0ZUJaTBBk4ZAfT0;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$ENbAOGLu-ybg0ZUJaTBBk4ZAfT0;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$ENbAOGLu-ybg0ZUJaTBBk4ZAfT0;->f$2:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->lambda$addSessionCameraCaptureCallback$8$Camera2CameraControlImpl(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void
.end method
