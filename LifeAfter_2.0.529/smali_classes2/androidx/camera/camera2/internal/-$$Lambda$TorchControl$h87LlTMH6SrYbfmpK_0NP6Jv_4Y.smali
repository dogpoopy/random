.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$h87LlTMH6SrYbfmpK_0NP6Jv_4Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/TorchControl;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/TorchControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$h87LlTMH6SrYbfmpK_0NP6Jv_4Y;->f$0:Landroidx/camera/camera2/internal/TorchControl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$h87LlTMH6SrYbfmpK_0NP6Jv_4Y;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-boolean p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$h87LlTMH6SrYbfmpK_0NP6Jv_4Y;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$h87LlTMH6SrYbfmpK_0NP6Jv_4Y;->f$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$h87LlTMH6SrYbfmpK_0NP6Jv_4Y;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-boolean v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$h87LlTMH6SrYbfmpK_0NP6Jv_4Y;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/TorchControl;->lambda$enableTorch$1$TorchControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V

    return-void
.end method
