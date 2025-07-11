.class public Landroidx/camera/extensions/internal/compat/workaround/ImageAnalysisAvailability;
.super Ljava/lang/Object;
.source "ImageAnalysisAvailability.java"


# instance fields
.field mExtraSupportedSurfaceCombinationsQuirk:Landroidx/camera/extensions/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

.field mImageAnalysisUnavailableQuirk:Landroidx/camera/extensions/internal/compat/quirk/ImageAnalysisUnavailableQuirk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Landroidx/camera/extensions/internal/compat/quirk/ImageAnalysisUnavailableQuirk;

    .line 45
    invoke-static {v0}, Landroidx/camera/extensions/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/internal/compat/quirk/ImageAnalysisUnavailableQuirk;

    iput-object v0, p0, Landroidx/camera/extensions/internal/compat/workaround/ImageAnalysisAvailability;->mImageAnalysisUnavailableQuirk:Landroidx/camera/extensions/internal/compat/quirk/ImageAnalysisUnavailableQuirk;

    .line 47
    const-class v0, Landroidx/camera/extensions/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    .line 48
    invoke-static {v0}, Landroidx/camera/extensions/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    iput-object v0, p0, Landroidx/camera/extensions/internal/compat/workaround/ImageAnalysisAvailability;->mExtraSupportedSurfaceCombinationsQuirk:Landroidx/camera/extensions/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    return-void
.end method


# virtual methods
.method public isAvailable(Ljava/lang/String;IIZZ)Z
    .locals 2

    .line 68
    iget-object v0, p0, Landroidx/camera/extensions/internal/compat/workaround/ImageAnalysisAvailability;->mImageAnalysisUnavailableQuirk:Landroidx/camera/extensions/internal/compat/quirk/ImageAnalysisUnavailableQuirk;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1, p3}, Landroidx/camera/extensions/internal/compat/quirk/ImageAnalysisUnavailableQuirk;->isUnavailable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 76
    :cond_0
    iget-object p1, p0, Landroidx/camera/extensions/internal/compat/workaround/ImageAnalysisAvailability;->mExtraSupportedSurfaceCombinationsQuirk:Landroidx/camera/extensions/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    return p3

    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    return p3

    :cond_2
    const/4 p1, 0x3

    if-eqz p4, :cond_5

    if-nez p5, :cond_5

    if-eqz p2, :cond_3

    if-eq p2, p3, :cond_3

    if-ne p2, p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    if-eq p2, p3, :cond_6

    if-ne p2, p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method
