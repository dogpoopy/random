.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$KNmGpbt3fXz1x_k8kDoeXNJLgMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$KNmGpbt3fXz1x_k8kDoeXNJLgMI;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$KNmGpbt3fXz1x_k8kDoeXNJLgMI;->f$1:Ljava/util/List;

    iput p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$KNmGpbt3fXz1x_k8kDoeXNJLgMI;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$KNmGpbt3fXz1x_k8kDoeXNJLgMI;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$KNmGpbt3fXz1x_k8kDoeXNJLgMI;->f$1:Ljava/util/List;

    iget v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$KNmGpbt3fXz1x_k8kDoeXNJLgMI;->f$2:I

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->lambda$executeCapture$3$Camera2CapturePipeline$Pipeline(Ljava/util/List;ILandroid/hardware/camera2/TotalCaptureResult;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
