.class Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;
.super Ljava/lang/Object;
.source "BasicExtenderSessionProcessor.java"

# interfaces
.implements Landroidx/camera/core/impl/RequestProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->startCapture(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsCaptureFailed:Z

.field mIsCaptureStarted:Z

.field final synthetic this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

.field final synthetic val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

.field final synthetic val$captureSequenceId:I


# direct methods
.method constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iput p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureSequenceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 506
    iput-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->mIsCaptureFailed:Z

    .line 507
    iput-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->mIsCaptureStarted:Z

    return-void
.end method


# virtual methods
.method public synthetic onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Request;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;JI)V

    return-void
.end method

.method public onCaptureCompleted(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2

    .line 522
    invoke-static {p2}, Landroidx/camera/camera2/impl/Camera2CameraCaptureResultConverter;->getCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    .line 524
    instance-of v0, p2, Landroid/hardware/camera2/TotalCaptureResult;

    const-string v1, "Cannot get capture TotalCaptureResult from the cameraCaptureResult "

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 526
    check-cast p2, Landroid/hardware/camera2/TotalCaptureResult;

    .line 528
    check-cast p1, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;

    .line 531
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object v0, v0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object v0, v0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    .line 534
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder$RequestProcessorRequest;->getCaptureStageId()I

    move-result p1

    .line 532
    invoke-virtual {v0, p2, p1}, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;->notifyCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;I)V

    goto :goto_0

    .line 536
    :cond_0
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureSequenceId:I

    invoke-interface {p1, p2}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureProcessStarted(I)V

    .line 537
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureSequenceId:I

    invoke-interface {p1, p2}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceCompleted(I)V

    .line 538
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    :goto_0
    return-void
.end method

.method public onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    .line 545
    iget-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->mIsCaptureFailed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 546
    iput-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->mIsCaptureFailed:Z

    .line 547
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureSequenceId:I

    invoke-interface {p1, p2}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureFailed(I)V

    .line 548
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureSequenceId:I

    invoke-interface {p1, p2}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceAborted(I)V

    .line 549
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    :cond_0
    return-void
.end method

.method public synthetic onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 1

    .line 555
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureSequenceId:I

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceAborted(I)V

    .line 556
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    return-void
.end method

.method public synthetic onCaptureSequenceCompleted(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureSequenceCompleted(Landroidx/camera/core/impl/RequestProcessor$Callback;IJ)V

    return-void
.end method

.method public onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V
    .locals 0

    .line 512
    iget-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->mIsCaptureStarted:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 513
    iput-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->mIsCaptureStarted:Z

    .line 514
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;->val$captureSequenceId:I

    invoke-interface {p1, p2, p4, p5}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureStarted(IJ)V

    :cond_0
    return-void
.end method
