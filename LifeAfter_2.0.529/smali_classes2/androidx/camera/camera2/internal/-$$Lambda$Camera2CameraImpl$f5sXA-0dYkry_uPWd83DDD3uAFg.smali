.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic f$1:Landroidx/camera/camera2/internal/CaptureSession;

.field public final synthetic f$2:Landroidx/camera/core/impl/DeferrableSurface;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Landroidx/camera/camera2/internal/CaptureSession;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;->f$1:Landroidx/camera/camera2/internal/CaptureSession;

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;->f$2:Landroidx/camera/core/impl/DeferrableSurface;

    iput-object p4, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;->f$1:Landroidx/camera/camera2/internal/CaptureSession;

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;->f$2:Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$f5sXA-0dYkry_uPWd83DDD3uAFg;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$configAndClose$1$Camera2CameraImpl(Landroidx/camera/camera2/internal/CaptureSession;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V

    return-void
.end method
