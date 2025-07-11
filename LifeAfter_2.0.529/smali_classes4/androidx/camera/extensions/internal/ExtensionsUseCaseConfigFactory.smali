.class public final Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;
.super Ljava/lang/Object;
.source "ExtensionsUseCaseConfigFactory.java"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory;


# instance fields
.field private final mImageAnalysisConfigProvider:Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;

.field private final mImageCaptureConfigProvider:Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;

.field private final mPreviewConfigProvider:Landroidx/camera/extensions/internal/PreviewConfigProvider;


# direct methods
.method public constructor <init>(ILandroidx/camera/extensions/internal/VendorExtender;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;

    invoke-direct {v0, p1, p2}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;-><init>(ILandroidx/camera/extensions/internal/VendorExtender;)V

    iput-object v0, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mImageCaptureConfigProvider:Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;

    .line 52
    new-instance v0, Landroidx/camera/extensions/internal/PreviewConfigProvider;

    invoke-direct {v0, p1, p2}, Landroidx/camera/extensions/internal/PreviewConfigProvider;-><init>(ILandroidx/camera/extensions/internal/VendorExtender;)V

    iput-object v0, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mPreviewConfigProvider:Landroidx/camera/extensions/internal/PreviewConfigProvider;

    .line 53
    new-instance p1, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;

    invoke-direct {p1, p2}, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;-><init>(Landroidx/camera/extensions/internal/VendorExtender;)V

    iput-object p1, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mImageAnalysisConfigProvider:Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;

    return-void
.end method

.method private isImageAnalysisSupported(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 62
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 63
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 64
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroid/util/Size;

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 66
    array-length v1, v1

    if-lez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method


# virtual methods
.method public getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;
    .locals 2

    .line 87
    sget-object p2, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    invoke-virtual {p1}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    return-object v1

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CameraX Extensions doesn\'t support VideoCapture!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    iget-object p1, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mImageAnalysisConfigProvider:Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;->getConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getSupportedResolutions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->isImageAnalysisSupported(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageAnalysis is not supported when Extension is enabled on this device. Check ExtensionsManager.isImageAnalysisSupported before binding the ImageAnalysis use case."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_3
    iget-object p1, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mPreviewConfigProvider:Landroidx/camera/extensions/internal/PreviewConfigProvider;

    .line 94
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/PreviewConfigProvider;->getConfig()Landroidx/camera/core/impl/PreviewConfig;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_4
    iget-object p1, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mImageCaptureConfigProvider:Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;

    .line 90
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->getConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    .line 118
    :goto_0
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 120
    invoke-static {p1}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p1

    return-object p1
.end method
