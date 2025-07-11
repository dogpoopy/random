.class public interface abstract Landroidx/camera/extensions/internal/VendorExtender;
.super Ljava/lang/Object;
.source "VendorExtender.java"


# virtual methods
.method public abstract createSessionProcessor(Landroid/content/Context;)Landroidx/camera/core/impl/SessionProcessor;
.end method

.method public abstract getEstimatedCaptureLatencyRange(Landroid/util/Size;)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedCaptureOutputResolutions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSupportedPreviewOutputResolutions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSupportedYuvAnalysisResolutions()[Landroid/util/Size;
.end method

.method public abstract init(Landroidx/camera/core/CameraInfo;)V
.end method

.method public abstract isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)Z"
        }
    .end annotation
.end method
