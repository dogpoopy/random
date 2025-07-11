.class public Landroidx/camera/extensions/internal/PreviewConfigProvider;
.super Ljava/lang/Object;
.source "PreviewConfigProvider.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/PreviewConfig;",
        ">;"
    }
.end annotation


# static fields
.field static final OPTION_PREVIEW_CONFIG_PROVIDER_MODE:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PreviewConfigProvider"


# instance fields
.field private final mEffectMode:I

.field private final mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Ljava/lang/Integer;

    const-string v1, "camerax.extensions.previewConfigProvider.mode"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/internal/PreviewConfigProvider;->OPTION_PREVIEW_CONFIG_PROVIDER_MODE:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method

.method public constructor <init>(ILandroidx/camera/extensions/internal/VendorExtender;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroidx/camera/extensions/internal/PreviewConfigProvider;->mEffectMode:I

    .line 48
    iput-object p2, p0, Landroidx/camera/extensions/internal/PreviewConfigProvider;->mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/PreviewConfigProvider;->getConfig()Landroidx/camera/core/impl/PreviewConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/PreviewConfig;
    .locals 3

    .line 54
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 55
    iget v1, p0, Landroidx/camera/extensions/internal/PreviewConfigProvider;->mEffectMode:I

    iget-object v2, p0, Landroidx/camera/extensions/internal/PreviewConfigProvider;->mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/camera/extensions/internal/PreviewConfigProvider;->updateBuilderConfig(Landroidx/camera/core/Preview$Builder;ILandroidx/camera/extensions/internal/VendorExtender;)V

    .line 56
    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/PreviewConfig;

    move-result-object v0

    return-object v0
.end method

.method updateBuilderConfig(Landroidx/camera/core/Preview$Builder;ILandroidx/camera/extensions/internal/VendorExtender;)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroidx/camera/core/Preview$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/extensions/internal/PreviewConfigProvider;->OPTION_PREVIEW_CONFIG_PROVIDER_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 66
    invoke-interface {p3}, Landroidx/camera/extensions/internal/VendorExtender;->getSupportedPreviewOutputResolutions()Ljava/util/List;

    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Landroidx/camera/core/Preview$Builder;->setSupportedResolutions(Ljava/util/List;)Landroidx/camera/core/Preview$Builder;

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Landroidx/camera/core/Preview$Builder;->setHighResolutionDisabled(Z)Landroidx/camera/core/Preview$Builder;

    return-void
.end method
