.class public interface abstract Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;
.super Ljava/lang/Object;
.source "SessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCallback"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted(JILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCaptureFailed(I)V
.end method

.method public abstract onCaptureProcessStarted(I)V
.end method

.method public abstract onCaptureSequenceAborted(I)V
.end method

.method public abstract onCaptureSequenceCompleted(I)V
.end method

.method public abstract onCaptureStarted(IJ)V
.end method
