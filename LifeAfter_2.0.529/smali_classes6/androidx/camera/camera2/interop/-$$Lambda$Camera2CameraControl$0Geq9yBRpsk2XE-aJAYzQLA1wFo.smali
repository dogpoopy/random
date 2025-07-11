.class public final synthetic Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$0Geq9yBRpsk2XE-aJAYzQLA1wFo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$0Geq9yBRpsk2XE-aJAYzQLA1wFo;->f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

    iput-object p2, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$0Geq9yBRpsk2XE-aJAYzQLA1wFo;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$0Geq9yBRpsk2XE-aJAYzQLA1wFo;->f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

    iget-object v1, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$0Geq9yBRpsk2XE-aJAYzQLA1wFo;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$addCaptureRequestOptions$3$Camera2CameraControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
