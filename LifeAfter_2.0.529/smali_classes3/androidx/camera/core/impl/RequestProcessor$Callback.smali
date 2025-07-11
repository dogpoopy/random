.class public interface abstract Landroidx/camera/core/impl/RequestProcessor$Callback;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Request;JI)V
.end method

.method public abstract onCaptureCompleted(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
.end method

.method public abstract onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V
.end method

.method public abstract onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
.end method

.method public abstract onCaptureSequenceAborted(I)V
.end method

.method public abstract onCaptureSequenceCompleted(IJ)V
.end method

.method public abstract onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V
.end method
