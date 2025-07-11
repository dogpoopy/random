.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$WvqSxDp6ENs9U7jFu-e_a84HGII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$WvqSxDp6ENs9U7jFu-e_a84HGII;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$WvqSxDp6ENs9U7jFu-e_a84HGII;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$WvqSxDp6ENs9U7jFu-e_a84HGII;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$WvqSxDp6ENs9U7jFu-e_a84HGII;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$WvqSxDp6ENs9U7jFu-e_a84HGII;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$WvqSxDp6ENs9U7jFu-e_a84HGII;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$isUseCaseAttached$9$Camera2CameraImpl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/String;)V

    return-void
.end method
