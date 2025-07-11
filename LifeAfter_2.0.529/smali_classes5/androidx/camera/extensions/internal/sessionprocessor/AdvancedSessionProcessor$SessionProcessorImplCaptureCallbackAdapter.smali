.class Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;
.super Ljava/lang/Object;
.source "AdvancedSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionProcessorImplCaptureCallbackAdapter"
.end annotation


# instance fields
.field private final mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V
    .locals 0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(JILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureCompleted(JILjava/util/Map;)V

    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 1

    .line 496
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureFailed(I)V

    return-void
.end method

.method public onCaptureProcessProgressed(I)V
    .locals 0

    return-void
.end method

.method public onCaptureProcessStarted(I)V
    .locals 1

    .line 491
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureProcessStarted(I)V

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 1

    .line 506
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(I)V
    .locals 1

    .line 501
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceCompleted(I)V

    return-void
.end method

.method public onCaptureStarted(IJ)V
    .locals 1

    .line 485
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;->mCaptureCallback:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureStarted(IJ)V

    return-void
.end method
