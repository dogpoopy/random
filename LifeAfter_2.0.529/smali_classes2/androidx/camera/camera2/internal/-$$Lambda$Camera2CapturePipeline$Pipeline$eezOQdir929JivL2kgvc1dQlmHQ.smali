.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$eezOQdir929JivL2kgvc1dQlmHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$eezOQdir929JivL2kgvc1dQlmHQ;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iput p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$eezOQdir929JivL2kgvc1dQlmHQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$eezOQdir929JivL2kgvc1dQlmHQ;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iget v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$eezOQdir929JivL2kgvc1dQlmHQ;->f$1:I

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->lambda$executeCapture$0$Camera2CapturePipeline$Pipeline(ILandroid/hardware/camera2/TotalCaptureResult;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
