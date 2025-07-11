.class public Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;
.super Ljava/lang/Object;
.source "ImageCaptureConfigProvider.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/ImageCaptureConfig;",
        ">;"
    }
.end annotation


# static fields
.field static final OPTION_IMAGE_CAPTURE_CONFIG_PROVIDER_MODE:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEffectMode:I

.field private final mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-class v0, Ljava/lang/Integer;

    const-string v1, "camerax.extensions.imageCaptureConfigProvider.mode"

    .line 38
    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->OPTION_IMAGE_CAPTURE_CONFIG_PROVIDER_MODE:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method

.method public constructor <init>(ILandroidx/camera/extensions/internal/VendorExtender;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->mEffectMode:I

    .line 49
    iput-object p2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->getConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/ImageCaptureConfig;
    .locals 3

    .line 55
    new-instance v0, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 56
    iget v1, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->mEffectMode:I

    iget-object v2, p0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->updateBuilderConfig(Landroidx/camera/core/ImageCapture$Builder;ILandroidx/camera/extensions/internal/VendorExtender;)V

    .line 58
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object v0

    return-object v0
.end method

.method updateBuilderConfig(Landroidx/camera/core/ImageCapture$Builder;ILandroidx/camera/extensions/internal/VendorExtender;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->OPTION_IMAGE_CAPTURE_CONFIG_PROVIDER_MODE:Landroidx/camera/core/impl/Config$Option;

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 67
    invoke-interface {v0, v1, p2}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 70
    invoke-interface {p3}, Landroidx/camera/extensions/internal/VendorExtender;->getSupportedCaptureOutputResolutions()Ljava/util/List;

    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Landroidx/camera/core/ImageCapture$Builder;->setSupportedResolutions(Ljava/util/List;)Landroidx/camera/core/ImageCapture$Builder;

    const/4 p2, 0x1

    .line 72
    invoke-virtual {p1, p2}, Landroidx/camera/core/ImageCapture$Builder;->setHighResolutionDisabled(Z)Landroidx/camera/core/ImageCapture$Builder;

    return-void
.end method
