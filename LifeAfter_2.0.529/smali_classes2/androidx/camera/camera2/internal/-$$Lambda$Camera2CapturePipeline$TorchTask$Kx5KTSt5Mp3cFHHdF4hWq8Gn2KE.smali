.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$Kx5KTSt5Mp3cFHHdF4hWq8Gn2KE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$Kx5KTSt5Mp3cFHHdF4hWq8Gn2KE;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$Kx5KTSt5Mp3cFHHdF4hWq8Gn2KE;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;->lambda$preCapture$2$Camera2CapturePipeline$TorchTask(Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
