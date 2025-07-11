.class public interface abstract Landroidx/camera/core/impl/CameraInfoInternal;
.super Ljava/lang/Object;
.source "CameraInfoInternal.java"

# interfaces
.implements Landroidx/camera/core/CameraInfo;


# virtual methods
.method public abstract addSessionCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
.end method

.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public abstract getCameraQuirks()Landroidx/camera/core/impl/Quirks;
.end method

.method public abstract getCameraSelector()Landroidx/camera/core/CameraSelector;
.end method

.method public abstract getEncoderProfilesProvider()Landroidx/camera/core/impl/EncoderProfilesProvider;
.end method

.method public abstract getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
.end method

.method public abstract getSupportedDynamicRanges()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedHighResolutions(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedResolutions(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimebase()Landroidx/camera/core/impl/Timebase;
.end method

.method public abstract removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
.end method
