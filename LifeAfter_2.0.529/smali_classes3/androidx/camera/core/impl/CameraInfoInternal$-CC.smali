.class public final synthetic Landroidx/camera/core/impl/CameraInfoInternal$-CC;
.super Ljava/lang/Object;
.source "CameraInfoInternal.java"


# direct methods
.method public static $default$getCameraSelector(Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/CameraSelector;
    .locals 3
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraInfoInternal;

    .line 123
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/-$$Lambda$CameraInfoInternal$tyBpPLLZO6O6ecwMxYav-5God-o;

    invoke-direct {v1, p0}, Landroidx/camera/core/impl/-$$Lambda$CameraInfoInternal$tyBpPLLZO6O6ecwMxYav-5God-o;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    .line 124
    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/impl/LensFacingCameraFilter;

    .line 137
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->getLensFacing()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/camera/core/impl/LensFacingCameraFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getImplementation(Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    return-object p0
.end method

.method public static synthetic lambda$getCameraSelector$0(Landroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraInfoInternal;

    .line 125
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraInfo;

    .line 127
    instance-of v2, v1, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 128
    move-object v2, v1

    check-cast v2, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 130
    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find camera with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from list of available cameras."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
