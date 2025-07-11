.class Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;
.super Ljava/lang/Object;
.source "BasicExtenderSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->startCapture(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsFirstFrame:Z

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

    .line 585
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iput p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->val$captureSequenceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 586
    iput-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->mIsFirstFrame:Z

    return-void
.end method


# virtual methods
.method public onNextImageAvailable(IJLandroidx/camera/extensions/internal/sessionprocessor/ImageReference;Ljava/lang/String;)V
    .locals 0

    .line 592
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onNextImageAvailable  outputStreamId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BasicSessionProcessor"

    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object p1, p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    if-eqz p1, :cond_0

    .line 595
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object p1, p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    invoke-virtual {p1, p4}, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;->notifyImage(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;)V

    .line 598
    :cond_0
    iget-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->mIsFirstFrame:Z

    if-eqz p1, :cond_1

    .line 599
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->val$captureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->val$captureSequenceId:I

    invoke-interface {p1, p2}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureProcessStarted(I)V

    const/4 p1, 0x0

    .line 600
    iput-boolean p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;->mIsFirstFrame:Z

    :cond_1
    return-void
.end method
