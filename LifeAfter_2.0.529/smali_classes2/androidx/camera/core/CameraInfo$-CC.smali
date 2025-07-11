.class public final synthetic Landroidx/camera/core/CameraInfo$-CC;
.super Ljava/lang/Object;
.source "CameraInfo.java"


# direct methods
.method public static $default$getIntrinsicZoomRatio(Landroidx/camera/core/CameraInfo;)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static $default$getLensFacing(Landroidx/camera/core/CameraInfo;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static $default$getSupportedFrameRateRanges(Landroidx/camera/core/CameraInfo;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/CameraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static $default$isFocusMeteringSupported(Landroidx/camera/core/CameraInfo;Landroidx/camera/core/FocusMeteringAction;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static $default$isPrivateReprocessingSupported(Landroidx/camera/core/CameraInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$isZslSupported(Landroidx/camera/core/CameraInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
