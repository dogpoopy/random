.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$8k2DMyHSvToSYpVOkKxfnNXGdrU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$8k2DMyHSvToSYpVOkKxfnNXGdrU;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$8k2DMyHSvToSYpVOkKxfnNXGdrU;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->lambda$executeCapture$2$Camera2CapturePipeline$Pipeline(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
