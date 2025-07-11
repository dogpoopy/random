.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$ulFy2Nuo43XzfnZdwtsOUR0TWFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/MeteringRepeatingSession$SurfaceResetCallback;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$ulFy2Nuo43XzfnZdwtsOUR0TWFU;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    return-void
.end method


# virtual methods
.method public final onSurfaceReset()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$ulFy2Nuo43XzfnZdwtsOUR0TWFU;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$addOrRemoveMeteringRepeatingUseCase$15$Camera2CameraImpl()V

    return-void
.end method
