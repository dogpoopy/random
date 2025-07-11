.class public final synthetic Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$O4cQVoLw89YaQuDKiX0-SWbWr6s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/interop/Camera2CameraControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$O4cQVoLw89YaQuDKiX0-SWbWr6s;->f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraControl$O4cQVoLw89YaQuDKiX0-SWbWr6s;->f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$clearCaptureRequestOptions$6$Camera2CameraControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
