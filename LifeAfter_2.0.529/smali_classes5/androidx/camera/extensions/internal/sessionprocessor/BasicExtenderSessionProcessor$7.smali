.class Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;
.super Ljava/lang/Object;
.source "BasicExtenderSessionProcessor.java"

# interfaces
.implements Landroidx/camera/core/impl/RequestProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->startTrigger(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

.field final synthetic val$callback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

.field final synthetic val$captureSequenceId:I


# direct methods
.method constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;->val$callback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iput p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;->val$captureSequenceId:I

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
    .locals 0

    .line 638
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;->val$callback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;->val$captureSequenceId:I

    invoke-interface {p1, p2}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceCompleted(I)V

    return-void
.end method

.method public onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    .line 644
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;->val$callback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;->val$captureSequenceId:I

    invoke-interface {p1, p2}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureFailed(I)V

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
