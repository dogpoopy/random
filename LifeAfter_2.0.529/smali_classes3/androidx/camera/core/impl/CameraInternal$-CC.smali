.class public final synthetic Landroidx/camera/core/impl/CameraInternal$-CC;
.super Ljava/lang/Object;
.source "CameraInternal.java"


# direct methods
.method public static $default$getCameraControl(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraControl;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraInternal;

    .line 196
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getCameraInfo(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraInfo;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraInternal;

    .line 202
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getCameraInternals(Landroidx/camera/core/impl/CameraInternal;)Ljava/util/LinkedHashSet;
    .locals 2
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static $default$getExtendedConfig(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/impl/CameraConfig;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraInternal;

    .line 230
    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->emptyConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getHasTransform(Landroidx/camera/core/impl/CameraInternal;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static $default$isFrontFacing(Landroidx/camera/core/impl/CameraInternal;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraInternal;

    .line 152
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$setActiveResumingMode(Landroidx/camera/core/impl/CameraInternal;Z)V
    .locals 0

    return-void
.end method

.method public static $default$setExtendedConfig(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraConfig;)V
    .locals 0

    return-void
.end method
