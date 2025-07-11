.class public final synthetic Landroidx/camera/core/impl/CameraCaptureResult$-CC;
.super Ljava/lang/Object;
.source "CameraCaptureResult.java"


# direct methods
.method public static $default$getCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraCaptureResult;

    .line 83
    invoke-static {}, Landroidx/camera/core/impl/CameraCaptureResult$EmptyCameraCaptureResult;->create()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    return-object v0
.end method

.method public static $default$populateExifData(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraCaptureResult;

    .line 72
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraCaptureResult;->getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setFlashState(Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    return-void
.end method
