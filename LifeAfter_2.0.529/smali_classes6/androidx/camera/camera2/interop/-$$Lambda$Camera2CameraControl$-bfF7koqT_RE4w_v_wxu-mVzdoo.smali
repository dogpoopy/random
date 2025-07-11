.class public final synthetic Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$-bfF7koqT_RE4w_v_wxu-mVzdoo;
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

    iput-object p1, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$-bfF7koqT_RE4w_v_wxu-mVzdoo;->f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

    iput-object p2, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$-bfF7koqT_RE4w_v_wxu-mVzdoo;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$-bfF7koqT_RE4w_v_wxu-mVzdoo;->f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

    iget-object v1, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$-bfF7koqT_RE4w_v_wxu-mVzdoo;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$clearCaptureRequestOptions$5$Camera2CameraControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
