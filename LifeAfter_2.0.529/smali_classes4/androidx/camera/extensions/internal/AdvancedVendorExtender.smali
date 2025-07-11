.class public Landroidx/camera/extensions/internal/AdvancedVendorExtender;
.super Ljava/lang/Object;
.source "AdvancedVendorExtender.java"

# interfaces
.implements Landroidx/camera/extensions/internal/VendorExtender;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvancedVendorExtender"


# instance fields
.field private final mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

.field private mCameraId:Ljava/lang/String;

.field private final mExtensionDisabledValidator:Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;

    invoke-direct {v0}, Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mExtensionDisabledValidator:Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 80
    :try_start_0
    new-instance p1, Landroidx/camera/extensions/impl/advanced/AutoAdvancedExtenderImpl;

    invoke-direct {p1}, Landroidx/camera/extensions/impl/advanced/AutoAdvancedExtenderImpl;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Should not active ExtensionMode.NONE"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Landroidx/camera/extensions/impl/advanced/BeautyAdvancedExtenderImpl;

    invoke-direct {p1}, Landroidx/camera/extensions/impl/advanced/BeautyAdvancedExtenderImpl;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    goto :goto_0

    .line 74
    :cond_2
    new-instance p1, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;

    invoke-direct {p1}, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    goto :goto_0

    .line 71
    :cond_3
    new-instance p1, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;

    invoke-direct {p1}, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    goto :goto_0

    .line 68
    :cond_4
    new-instance p1, Landroidx/camera/extensions/impl/advanced/BokehAdvancedExtenderImpl;

    invoke-direct {p1}, Landroidx/camera/extensions/impl/advanced/BokehAdvancedExtenderImpl;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 87
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AdvancedExtenderImpl does not exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;

    invoke-direct {v0}, Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mExtensionDisabledValidator:Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;

    .line 93
    iput-object p1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    return-void
.end method

.method private convertResolutionMapToList(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 149
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/util/Size;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    .line 150
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getSupportedParameterKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-static {}, Landroidx/camera/extensions/internal/ExtensionVersion;->getRuntimeVersion()Landroidx/camera/extensions/internal/Version;

    move-result-object v1

    sget-object v2, Landroidx/camera/extensions/internal/Version;->VERSION_1_3:Landroidx/camera/extensions/internal/Version;

    invoke-virtual {v1, v2}, Landroidx/camera/extensions/internal/Version;->compareTo(Landroidx/camera/extensions/internal/Version;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    .line 169
    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v1

    .line 168
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AdvancedVendorExtender"

    const-string v3, "AdvancedExtenderImpl.getAvailableCaptureRequestKeys throws exceptions"

    .line 171
    invoke-static {v2, v3, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public createSessionProcessor(Landroid/content/Context;)Landroidx/camera/core/impl/SessionProcessor;
    .locals 3

    .line 181
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    const-string v1, "VendorExtender#init() must be called first"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;

    iget-object v1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    .line 183
    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    move-result-object v1

    .line 184
    invoke-direct {p0}, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->getSupportedParameterKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;-><init>(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;Ljava/util/List;Landroid/content/Context;)V

    return-object v0
.end method

.method public getEstimatedCaptureLatencyRange(Landroid/util/Size;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    const-string v1, "VendorExtender#init() must be called first"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    iget-object v1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-interface {v0, v1, p1, v2}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/util/Size;I)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedCaptureOutputResolutions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    const-string v1, "VendorExtender#init() must be called first"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    iget-object v1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    .line 141
    invoke-interface {v0, v1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->convertResolutionMapToList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewOutputResolutions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    const-string v1, "VendorExtender#init() must be called first"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    iget-object v1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    .line 133
    invoke-interface {v0, v1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 132
    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->convertResolutionMapToList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedYuvAnalysisResolutions()[Landroid/util/Size;
    .locals 2

    .line 158
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    const-string v1, "VendorExtender#init() must be called first"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    iget-object v1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedYuvAnalysisResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/util/Size;

    goto :goto_0

    :cond_0
    new-array v1, v1, [Landroid/util/Size;

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    :goto_0
    return-object v0
.end method

.method public init(Landroidx/camera/core/CameraInfo;)V
    .locals 2

    .line 99
    invoke-static {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraCharacteristicsMap()Ljava/util/Map;

    move-result-object p1

    .line 104
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    iget-object v1, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)Z"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mExtensionDisabledValidator:Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/compat/workaround/ExtensionDisabledValidator;->shouldDisableExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 115
    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;->mAdvancedExtenderImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
