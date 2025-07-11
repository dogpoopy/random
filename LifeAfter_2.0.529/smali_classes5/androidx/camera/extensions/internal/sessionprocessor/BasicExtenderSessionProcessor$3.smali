.class Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;
.super Ljava/lang/Object;
.source "BasicExtenderSessionProcessor.java"

# interfaces
.implements Landroidx/camera/core/impl/RequestProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->updateRepeating(ILandroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

.field final synthetic val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

.field final synthetic val$repeatingCaptureSequenceId:I


# direct methods
.method constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 411
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iput p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->val$repeatingCaptureSequenceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Request;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;JI)V

    return-void
.end method

.method public onCaptureCompleted(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 4

    .line 416
    invoke-static {p2}, Landroidx/camera/camera2/impl/Camera2CameraCaptureResultConverter;->getCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 418
    instance-of p2, p1, Landroid/hardware/camera2/TotalCaptureResult;

    const-string v0, "Cannot get TotalCaptureResult from the cameraCaptureResult "

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 420
    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 422
    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object p2, p2, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    if-eqz p2, :cond_0

    .line 423
    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object p2, p2, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    invoke-virtual {p2, p1}, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->notifyCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 425
    :cond_0
    sget-object p2, Landroidx/camera/extensions/internal/Version;->VERSION_1_3:Landroidx/camera/extensions/internal/Version;

    invoke-static {p2}, Landroidx/camera/extensions/internal/ClientVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/camera/extensions/internal/Version;->VERSION_1_3:Landroidx/camera/extensions/internal/Version;

    .line 427
    invoke-static {p2}, Landroidx/camera/extensions/internal/ExtensionVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 428
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_1

    .line 430
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->val$repeatingCaptureSequenceId:I

    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    .line 432
    invoke-virtual {v3, p1}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->getCaptureResultKeyMaps(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/util/Map;

    move-result-object v3

    .line 430
    invoke-interface {v0, v1, v2, p2, v3}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureCompleted(JILjava/util/Map;)V

    .line 437
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object p2, p2, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestUpdateProcessor:Landroidx/camera/extensions/impl/RequestUpdateProcessorImpl;

    if-eqz p2, :cond_2

    .line 438
    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object p2, p2, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestUpdateProcessor:Landroidx/camera/extensions/impl/RequestUpdateProcessorImpl;

    .line 439
    invoke-interface {p2, p1}, Landroidx/camera/extensions/impl/RequestUpdateProcessorImpl;->process(Landroid/hardware/camera2/TotalCaptureResult;)Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 442
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->val$repeatingCaptureSequenceId:I

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-virtual {p1, p2, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->updateRepeating(ILandroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V

    .line 446
    :cond_2
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;->val$repeatingCaptureSequenceId:I

    invoke-interface {p1, p2}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceCompleted(I)V

    return-void
.end method

.method public synthetic onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    return-void
.end method

.method public synthetic onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V

    return-void
.end method

.method public synthetic onCaptureSequenceAborted(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureSequenceAborted(Landroidx/camera/core/impl/RequestProcessor$Callback;I)V

    return-void
.end method

.method public synthetic onCaptureSequenceCompleted(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureSequenceCompleted(Landroidx/camera/core/impl/RequestProcessor$Callback;IJ)V

    return-void
.end method

.method public synthetic onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V

    return-void
.end method
