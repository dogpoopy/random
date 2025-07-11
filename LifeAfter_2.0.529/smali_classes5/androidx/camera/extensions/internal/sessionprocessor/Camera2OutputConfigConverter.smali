.class Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigConverter;
.super Ljava/lang/Object;
.source "Camera2OutputConfigConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromImpl(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;
    .locals 7

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getSurfaceSharingOutputConfigs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getSurfaceSharingOutputConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 46
    invoke-static {v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigConverter;->fromImpl(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    move-result-object v1

    .line 47
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    instance-of v0, p0, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;

    if-eqz v0, :cond_1

    .line 52
    check-cast p0, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;

    .line 54
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;->getId()I

    move-result v0

    .line 55
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;->getSurfaceGroupId()I

    move-result v1

    .line 56
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;->getSurface()Landroid/view/Surface;

    move-result-object p0

    .line 53
    invoke-static {v0, v1, v2, v3, p0}, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;->create(IILjava/lang/String;Ljava/util/List;Landroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    move-result-object p0

    return-object p0

    .line 59
    :cond_1
    instance-of v0, p0, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;

    if-eqz v0, :cond_2

    .line 60
    check-cast p0, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;

    .line 62
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getId()I

    move-result v0

    .line 63
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getSurfaceGroupId()I

    move-result v1

    .line 64
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getSize()Landroid/util/Size;

    move-result-object v4

    .line 67
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getImageFormat()I

    move-result v5

    .line 68
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getMaxImages()I

    move-result v6

    .line 61
    invoke-static/range {v0 .. v6}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->create(IILjava/lang/String;Ljava/util/List;Landroid/util/Size;II)Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    move-result-object p0

    return-object p0

    .line 69
    :cond_2
    instance-of v0, p0, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;

    if-eqz v0, :cond_3

    .line 70
    check-cast p0, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;

    .line 73
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getId()I

    move-result v0

    .line 74
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getSurfaceGroupId()I

    move-result v1

    .line 75
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getImageFormat()I

    move-result v4

    .line 78
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getMaxImages()I

    move-result v5

    .line 72
    invoke-static/range {v0 .. v5}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;->create(IILjava/lang/String;Ljava/util/List;II)Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;

    move-result-object p0

    return-object p0

    .line 80
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported Camera2OutputConfigImpl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
