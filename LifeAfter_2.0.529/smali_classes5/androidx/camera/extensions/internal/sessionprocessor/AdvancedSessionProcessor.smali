.class public Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
.super Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;
.source "AdvancedSessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;,
        Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;,
        Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;,
        Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;,
        Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageReferenceImplAdapter;,
        Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageProcessorAdapter;,
        Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p2}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;-><init>(Ljava/util/List;)V

    .line 73
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    .line 74
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static convertConfigToMap(Landroidx/camera/core/impl/Config;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-static {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->listOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/Config$Option;

    .line 142
    invoke-virtual {v2}, Landroidx/camera/core/impl/Config$Option;->getToken()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 143
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertToCamera2SessionConfig(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;
    .locals 4

    .line 101
    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    invoke-direct {v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;-><init>()V

    .line 102
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;->getOutputConfigs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 104
    invoke-static {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfigConverter;->fromImpl(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->addOutputConfig(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;->getSessionParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 112
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;->getSessionParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 111
    invoke-virtual {v0, v2, v3}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->addSessionParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    goto :goto_1

    .line 115
    :cond_1
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;->getSessionTemplateId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->setSessionTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    .line 116
    invoke-virtual {v0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->build()Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abortCapture(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->abortCapture(I)V

    return-void
.end method

.method protected deInitSessionInternal()V
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->deInitSession()V

    return-void
.end method

.method public getRealtimeCaptureLatency()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_4:Landroidx/camera/extensions/internal/Version;

    invoke-static {v0}, Landroidx/camera/extensions/internal/ClientVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_4:Landroidx/camera/extensions/internal/Version;

    .line 195
    invoke-static {v0}, Landroidx/camera/extensions/internal/ExtensionVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->getRealtimeCaptureLatency()Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSupportedCameraOperations()Ljava/util/Set;
    .locals 1

    .line 64
    invoke-super {p0}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->getSupportedCameraOperations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected initSessionInternal(Ljava/lang/String;Ljava/util/Map;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroidx/camera/core/impl/OutputSurface;",
            "Landroidx/camera/core/impl/OutputSurface;",
            "Landroidx/camera/core/impl/OutputSurface;",
            ")",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mContext:Landroid/content/Context;

    new-instance v4, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;

    invoke-direct {v4, p3}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;-><init>(Landroidx/camera/core/impl/OutputSurface;)V

    new-instance v5, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;

    invoke-direct {v5, p4}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;-><init>(Landroidx/camera/core/impl/OutputSurface;)V

    if-nez p5, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p3, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;

    invoke-direct {p3, p5}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;-><init>(Landroidx/camera/core/impl/OutputSurface;)V

    :goto_0
    move-object v6, p3

    move-object v1, p1

    move-object v2, p2

    .line 86
    invoke-interface/range {v0 .. v6}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->convertToCamera2SessionConfig(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;

    move-result-object p1

    return-object p1
.end method

.method public onCaptureSessionEnd()V
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->onCaptureSessionEnd()V

    return-void
.end method

.method public onCaptureSessionStart(Landroidx/camera/core/impl/RequestProcessor;)V
    .locals 2

    .line 151
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;

    invoke-direct {v1, p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;Landroidx/camera/core/impl/RequestProcessor;)V

    invoke-interface {v0, v1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->onCaptureSessionStart(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;)V

    return-void
.end method

.method public setParameters(Landroidx/camera/core/impl/Config;)V
    .locals 1

    .line 127
    invoke-static {p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->convertConfigToMap(Landroidx/camera/core/impl/Config;)Ljava/util/HashMap;

    move-result-object p1

    .line 128
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->setParameters(Ljava/util/Map;)V

    return-void
.end method

.method public startCapture(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .locals 2

    .line 162
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;

    invoke-direct {v1, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;-><init>(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V

    invoke-interface {v0, v1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->startCapture(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public startRepeating(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .locals 2

    .line 167
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;

    invoke-direct {v1, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;-><init>(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V

    invoke-interface {v0, v1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->startRepeating(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public startTrigger(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .locals 2

    .line 172
    invoke-static {p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->convertConfigToMap(Landroidx/camera/core/impl/Config;)Ljava/util/HashMap;

    move-result-object p1

    .line 173
    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_3:Landroidx/camera/extensions/internal/Version;

    invoke-static {v0}, Landroidx/camera/extensions/internal/ClientVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_3:Landroidx/camera/extensions/internal/Version;

    .line 174
    invoke-static {v0}, Landroidx/camera/extensions/internal/ExtensionVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;

    invoke-direct {v1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$SessionProcessorImplCaptureCallbackAdapter;-><init>(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V

    invoke-interface {v0, p1, v1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->startTrigger(Ljava/util/Map;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public stopRepeating()V
    .locals 1

    .line 183
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->stopRepeating()V

    return-void
.end method
