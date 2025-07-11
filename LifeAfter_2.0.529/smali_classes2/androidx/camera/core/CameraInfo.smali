.class public interface abstract Landroidx/camera/core/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraInfo$ImplementationType;
    }
.end annotation


# static fields
.field public static final IMPLEMENTATION_TYPE_CAMERA2:Ljava/lang/String; = "androidx.camera.camera2"

.field public static final IMPLEMENTATION_TYPE_CAMERA2_LEGACY:Ljava/lang/String; = "androidx.camera.camera2.legacy"

.field public static final IMPLEMENTATION_TYPE_FAKE:Ljava/lang/String; = "androidx.camera.fake"

.field public static final IMPLEMENTATION_TYPE_UNKNOWN:Ljava/lang/String; = "<unknown>"

.field public static final INTRINSIC_ZOOM_RATIO_UNKNOWN:F = 1.0f


# virtual methods
.method public abstract getCameraSelector()Landroidx/camera/core/CameraSelector;
.end method

.method public abstract getCameraState()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/CameraState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExposureState()Landroidx/camera/core/ExposureState;
.end method

.method public abstract getImplementationType()Ljava/lang/String;
.end method

.method public abstract getIntrinsicZoomRatio()F
.end method

.method public abstract getLensFacing()I
.end method

.method public abstract getSensorRotationDegrees()I
.end method

.method public abstract getSensorRotationDegrees(I)I
.end method

.method public abstract getSupportedFrameRateRanges()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTorchState()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getZoomState()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasFlashUnit()Z
.end method

.method public abstract isFocusMeteringSupported(Landroidx/camera/core/FocusMeteringAction;)Z
.end method

.method public abstract isPrivateReprocessingSupported()Z
.end method

.method public abstract isZslSupported()Z
.end method
