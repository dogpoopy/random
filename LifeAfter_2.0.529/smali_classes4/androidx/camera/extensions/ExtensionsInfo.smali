.class final Landroidx/camera/extensions/ExtensionsInfo;
.super Ljava/lang/Object;
.source "ExtensionsInfo.java"


# static fields
.field private static final EXTENDED_CAMERA_CONFIG_PROVIDER_ID_PREFIX:Ljava/lang/String; = ":camera:camera-extensions-"


# instance fields
.field private final mCameraProvider:Landroidx/camera/core/CameraProvider;

.field private mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;


# direct methods
.method constructor <init>(Landroidx/camera/core/CameraProvider;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    .line 69
    sget-object p1, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$Kd6M3PZR8ewt9w1puxtO9WJ0jng;->INSTANCE:Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$Kd6M3PZR8ewt9w1puxtO9WJ0jng;

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    return-void
.end method

.method private static getExtendedCameraConfigProviderId(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_AUTO"

    goto :goto_0

    .line 304
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid extension mode!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_FACE_RETOUCH"

    goto :goto_0

    :cond_2
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_NIGHT"

    goto :goto_0

    :cond_3
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_HDR"

    goto :goto_0

    :cond_4
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_BOKEH"

    goto :goto_0

    :cond_5
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_NONE"

    :goto_0
    return-object p0
.end method

.method private getFilter(I)Landroidx/camera/core/CameraFilter;
    .locals 2

    .line 218
    invoke-static {p1}, Landroidx/camera/extensions/ExtensionsInfo;->getExtendedCameraConfigProviderId(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    invoke-interface {v1, p1}, Landroidx/camera/extensions/VendorExtenderFactory;->createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p1

    .line 221
    new-instance v1, Landroidx/camera/extensions/ExtensionCameraFilter;

    invoke-direct {v1, v0, p1}, Landroidx/camera/extensions/ExtensionCameraFilter;-><init>(Ljava/lang/String;Landroidx/camera/extensions/internal/VendorExtender;)V

    return-object v1
.end method

.method static getVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;
    .locals 2

    .line 260
    invoke-static {}, Landroidx/camera/extensions/ExtensionsInfo;->isAdvancedExtenderSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Landroidx/camera/extensions/internal/AdvancedVendorExtender;

    invoke-direct {v0, p0}, Landroidx/camera/extensions/internal/AdvancedVendorExtender;-><init>(I)V

    goto :goto_0

    .line 265
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 266
    new-instance v0, Landroidx/camera/extensions/internal/BasicVendorExtender;

    invoke-direct {v0, p0}, Landroidx/camera/extensions/internal/BasicVendorExtender;-><init>(I)V

    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Landroidx/camera/extensions/ExtensionsInfo$1;

    invoke-direct {v0}, Landroidx/camera/extensions/ExtensionsInfo$1;-><init>()V

    :goto_0
    return-object v0
.end method

.method private injectExtensionCameraConfig(I)V
    .locals 3

    .line 230
    invoke-static {p1}, Landroidx/camera/extensions/ExtensionsInfo;->getExtendedCameraConfigProviderId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/Identifier;->create(Ljava/lang/Object;)Landroidx/camera/core/impl/Identifier;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->getConfigProvider(Ljava/lang/Object;)Landroidx/camera/core/impl/CameraConfigProvider;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/CameraConfigProvider;->EMPTY:Landroidx/camera/core/impl/CameraConfigProvider;

    if-ne v1, v2, :cond_0

    .line 233
    new-instance v1, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;

    invoke-direct {v1, p0, p1, v0}, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;-><init>(Landroidx/camera/extensions/ExtensionsInfo;ILandroidx/camera/core/impl/Identifier;)V

    invoke-static {v0, v1}, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->addConfig(Ljava/lang/Object;Landroidx/camera/core/impl/CameraConfigProvider;)V

    :cond_0
    return-void
.end method

.method private static isAdvancedExtenderSupported()Z
    .locals 2

    .line 275
    invoke-static {}, Landroidx/camera/extensions/internal/ExtensionVersion;->getRuntimeVersion()Landroidx/camera/extensions/internal/Version;

    move-result-object v0

    sget-object v1, Landroidx/camera/extensions/internal/Version;->VERSION_1_2:Landroidx/camera/extensions/internal/Version;

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/internal/Version;->compareTo(Landroidx/camera/extensions/internal/Version;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 278
    :cond_0
    invoke-static {}, Landroidx/camera/extensions/internal/ExtensionVersion;->isAdvancedExtenderSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$0(I)Landroidx/camera/extensions/internal/VendorExtender;
    .locals 0

    .line 69
    invoke-static {p0}, Landroidx/camera/extensions/ExtensionsInfo;->getVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getEstimatedCaptureLatencyRange(Landroidx/camera/core/CameraSelector;ILandroid/util/Size;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/CameraSelector;",
            "I",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    .line 163
    invoke-direct {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    .line 166
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    .line 167
    invoke-interface {v0}, Landroidx/camera/core/CameraProvider;->getAvailableCameraInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 174
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/CameraInfo;

    .line 177
    invoke-static {}, Landroidx/camera/extensions/internal/ExtensionVersion;->getRuntimeVersion()Landroidx/camera/extensions/internal/Version;

    move-result-object v0

    sget-object v2, Landroidx/camera/extensions/internal/Version;->VERSION_1_2:Landroidx/camera/extensions/internal/Version;

    invoke-virtual {v0, v2}, Landroidx/camera/extensions/internal/Version;->compareTo(Landroidx/camera/extensions/internal/Version;)I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    .line 182
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    invoke-interface {v0, p2}, Landroidx/camera/extensions/VendorExtenderFactory;->createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p2

    .line 183
    invoke-interface {p2, p1}, Landroidx/camera/extensions/internal/VendorExtender;->init(Landroidx/camera/core/CameraInfo;)V

    .line 185
    invoke-interface {p2, p3}, Landroidx/camera/extensions/internal/VendorExtender;->getEstimatedCaptureLatencyRange(Landroid/util/Size;)Landroid/util/Range;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method getExtensionCameraSelectorAndInjectCameraConfig(Landroidx/camera/core/CameraSelector;I)Landroidx/camera/core/CameraSelector;
    .locals 2

    .line 91
    invoke-virtual {p0, p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;->isExtensionAvailable(Landroidx/camera/core/CameraSelector;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector;->getCameraFilterSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraFilter;

    .line 100
    instance-of v1, v1, Landroidx/camera/extensions/ExtensionCameraFilter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An extension is already applied to the base CameraSelector."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    invoke-direct {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->injectExtensionCameraConfig(I)V

    .line 110
    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    .line 114
    invoke-direct {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    .line 116
    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    return-object p1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No camera can be found to support the specified extensions mode! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method isExtensionAvailable(Landroidx/camera/core/CameraSelector;I)Z
    .locals 0

    .line 129
    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    .line 131
    invoke-direct {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    .line 133
    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    iget-object p2, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    .line 134
    invoke-interface {p2}, Landroidx/camera/core/CameraProvider;->getAvailableCameraInfos()Ljava/util/List;

    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method isImageAnalysisSupported(Landroidx/camera/core/CameraSelector;I)Z
    .locals 2

    .line 193
    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    .line 194
    invoke-direct {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    .line 196
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    .line 197
    invoke-interface {v0}, Landroidx/camera/core/CameraProvider;->getAvailableCameraInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 199
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 204
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/CameraInfo;

    .line 205
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    invoke-interface {v0, p2}, Landroidx/camera/extensions/VendorExtenderFactory;->createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p2

    .line 206
    invoke-interface {p2, p1}, Landroidx/camera/extensions/internal/VendorExtender;->init(Landroidx/camera/core/CameraInfo;)V

    .line 207
    invoke-interface {p2}, Landroidx/camera/extensions/internal/VendorExtender;->getSupportedYuvAnalysisResolutions()[Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 208
    array-length p1, p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public synthetic lambda$injectExtensionCameraConfig$1$ExtensionsInfo(ILandroidx/camera/core/impl/Identifier;Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;
    .locals 2

    .line 234
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/VendorExtenderFactory;->createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object v0

    .line 235
    invoke-interface {v0, p3}, Landroidx/camera/extensions/internal/VendorExtender;->init(Landroidx/camera/core/CameraInfo;)V

    .line 237
    new-instance p3, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;

    invoke-direct {p3, p1, v0}, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;-><init>(ILandroidx/camera/extensions/internal/VendorExtender;)V

    .line 240
    new-instance v1, Landroidx/camera/extensions/ExtensionsConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;-><init>()V

    .line 241
    invoke-virtual {v1, p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setExtensionMode(I)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1, p3}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setUseCaseConfigFactory(Landroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    .line 243
    invoke-virtual {p1, p2}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setCompatibilityId(Landroidx/camera/core/impl/Identifier;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 244
    invoke-virtual {p1, p2}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setZslDisabled(Z)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p2}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setUseCaseCombinationRequiredRule(I)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    .line 248
    invoke-interface {v0, p4}, Landroidx/camera/extensions/internal/VendorExtender;->createSessionProcessor(Landroid/content/Context;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 250
    invoke-virtual {p1, p2}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->build()Landroidx/camera/extensions/ExtensionsConfig;

    move-result-object p1

    return-object p1
.end method

.method setVendorExtenderFactory(Landroidx/camera/extensions/VendorExtenderFactory;)V
    .locals 0

    .line 213
    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    return-void
.end method
