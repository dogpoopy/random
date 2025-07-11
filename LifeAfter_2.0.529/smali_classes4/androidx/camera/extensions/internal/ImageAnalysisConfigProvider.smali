.class public Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;
.super Ljava/lang/Object;
.source "ImageAnalysisConfigProvider.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/ImageAnalysisConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/internal/VendorExtender;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;->mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;->getConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;
    .locals 5

    .line 46
    new-instance v0, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v0}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 47
    iget-object v1, p0, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;->mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    invoke-interface {v1}, Landroidx/camera/extensions/internal/VendorExtender;->getSupportedYuvAnalysisResolutions()[Landroid/util/Size;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 49
    array-length v3, v1

    if-lez v3, :cond_0

    .line 50
    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/camera/core/ImageAnalysis$Builder;->setSupportedResolutions(Ljava/util/List;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 53
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object v0

    return-object v0
.end method
