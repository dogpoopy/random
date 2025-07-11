.class Landroidx/camera/extensions/ExtensionsInfo$1;
.super Ljava/lang/Object;
.source "ExtensionsInfo.java"

# interfaces
.implements Landroidx/camera/extensions/internal/VendorExtender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/ExtensionsInfo;->getVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createSessionProcessor(Landroid/content/Context;)Landroidx/camera/core/impl/SessionProcessor;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/extensions/internal/VendorExtender$-CC;->$default$createSessionProcessor(Landroidx/camera/extensions/internal/VendorExtender;Landroid/content/Context;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getEstimatedCaptureLatencyRange(Landroid/util/Size;)Landroid/util/Range;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/extensions/internal/VendorExtender$-CC;->$default$getEstimatedCaptureLatencyRange(Landroidx/camera/extensions/internal/VendorExtender;Landroid/util/Size;)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getSupportedCaptureOutputResolutions()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Landroidx/camera/extensions/internal/VendorExtender$-CC;->$default$getSupportedCaptureOutputResolutions(Landroidx/camera/extensions/internal/VendorExtender;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSupportedPreviewOutputResolutions()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Landroidx/camera/extensions/internal/VendorExtender$-CC;->$default$getSupportedPreviewOutputResolutions(Landroidx/camera/extensions/internal/VendorExtender;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSupportedYuvAnalysisResolutions()[Landroid/util/Size;
    .locals 1

    invoke-static {p0}, Landroidx/camera/extensions/internal/VendorExtender$-CC;->$default$getSupportedYuvAnalysisResolutions(Landroidx/camera/extensions/internal/VendorExtender;)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public synthetic init(Landroidx/camera/core/CameraInfo;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/extensions/internal/VendorExtender$-CC;->$default$init(Landroidx/camera/extensions/internal/VendorExtender;Landroidx/camera/core/CameraInfo;)V

    return-void
.end method

.method public synthetic isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/extensions/internal/VendorExtender$-CC;->$default$isExtensionAvailable(Landroidx/camera/extensions/internal/VendorExtender;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
