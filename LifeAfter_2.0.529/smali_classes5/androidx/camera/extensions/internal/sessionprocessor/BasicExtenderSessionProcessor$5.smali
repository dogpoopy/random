.class Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;
.super Ljava/lang/Object;
.source "BasicExtenderSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$OnCaptureResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->startCapture(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 563
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iput p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->val$captureSequenceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->val$captureSequenceId:I

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    .line 580
    invoke-virtual {v2, p3}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->getCaptureResultKeyMapFromList(Ljava/util/List;)Ljava/util/Map;

    move-result-object p3

    .line 579
    invoke-interface {v0, p1, p2, v1, p3}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureCompleted(JILjava/util/Map;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 566
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->val$captureSequenceId:I

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceCompleted(I)V

    .line 567
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 572
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->val$captureSequenceId:I

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureFailed(I)V

    .line 573
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    return-void
.end method
