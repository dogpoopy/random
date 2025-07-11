.class public Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;
.super Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;
.source "BasicExtenderSessionProcessor.java"


# static fields
.field private static final PREVIEW_PROCESS_MAX_IMAGES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BasicSessionProcessor"

.field static sLastOutputConfigId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private volatile mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

.field private volatile mCaptureOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

.field private volatile mCaptureOutputSurfaceConfig:Landroidx/camera/core/impl/OutputSurface;

.field private final mContext:Landroid/content/Context;

.field private final mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

.field volatile mIsCapturing:Z

.field final mLock:Ljava/lang/Object;

.field private final mNextCaptureSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mOnEnableDisableSessionDurationCheck:Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

.field private volatile mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

.field private volatile mPreviewOutputSurfaceConfig:Landroidx/camera/core/impl/OutputSurface;

.field volatile mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

.field private volatile mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

.field volatile mRequestUpdateProcessor:Landroidx/camera/extensions/impl/RequestUpdateProcessorImpl;

.field volatile mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

.field private final mSupportedResultKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->sLastOutputConfigId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/extensions/impl/PreviewExtenderImpl;Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/extensions/impl/PreviewExtenderImpl;",
            "Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p3}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;-><init>(Ljava/util/List;)V

    .line 81
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mLock:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 82
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    .line 83
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    .line 84
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestUpdateProcessor:Landroidx/camera/extensions/impl/RequestUpdateProcessorImpl;

    .line 87
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    const/4 p3, 0x0

    .line 92
    iput-boolean p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mNextCaptureSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mParameters:Ljava/util/Map;

    .line 98
    new-instance p3, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;

    invoke-direct {p3}, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;-><init>()V

    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mOnEnableDisableSessionDurationCheck:Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;

    .line 107
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    .line 108
    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    .line 109
    iput-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mSupportedResultKeys:Ljava/util/List;

    .line 110
    iput-object p5, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private applyParameters(Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;)V
    .locals 4

    .line 288
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 290
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mParameters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {p1, v2, v3}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setParameters(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    goto :goto_0

    .line 295
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private applyPreviewStagesParameters(Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;)V
    .locals 3

    .line 455
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->getCaptureStage()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 459
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setParameters(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyRotationAndJpegQualityToProcessor()V
    .locals 3

    .line 299
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    if-nez v1, :cond_0

    .line 301
    monitor-exit v0

    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mParameters:Ljava/util/Map;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 305
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;->setRotationDegrees(I)V

    .line 308
    :cond_1
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mParameters:Ljava/util/Map;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    if-eqz v1, :cond_2

    .line 310
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;->setJpegQuality(I)V

    .line 312
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private submitRequestByCaptureStages(Landroidx/camera/core/impl/RequestProcessor;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/RequestProcessor;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/CaptureStageImpl;",
            ">;)V"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/CaptureStageImpl;

    .line 320
    new-instance v2, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    invoke-direct {v2}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;-><init>()V

    .line 321
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {v3}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->addTargetOutputConfigIds(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 322
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {v3}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->addTargetOutputConfigIds(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 325
    :cond_0
    invoke-interface {v1}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 326
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setParameters(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 328
    invoke-virtual {v2, v1}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 329
    invoke-virtual {v2}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->build()Landroidx/camera/core/impl/RequestProcessor$Request;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_2
    new-instance p2, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$2;

    invoke-direct {p2, p0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$2;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;)V

    invoke-interface {p1, v0, p2}, Landroidx/camera/core/impl/RequestProcessor;->submit(Ljava/util/List;Landroidx/camera/core/impl/RequestProcessor$Callback;)I

    return-void
.end method


# virtual methods
.method public abortCapture(I)V
    .locals 0

    .line 610
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    invoke-interface {p1}, Landroidx/camera/core/impl/RequestProcessor;->abortCaptures()V

    return-void
.end method

.method protected deInitSessionInternal()V
    .locals 2

    const-string v0, "BasicSessionProcessor"

    const-string v1, "preview onDeInit"

    .line 217
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->onDeInit()V

    const-string v1, "capture onDeInit"

    .line 219
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onDeInit()V

    .line 222
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->close()V

    .line 224
    iput-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    .line 226
    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;->close()V

    .line 228
    iput-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    :cond_1
    return-void
.end method

.method getCaptureResultKeyMapFromList(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 361
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getCaptureResultKeyMaps(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ")",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 369
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 370
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mSupportedResultKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
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

    .line 654
    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_4:Landroidx/camera/extensions/internal/Version;

    invoke-static {v0}, Landroidx/camera/extensions/internal/ClientVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_4:Landroidx/camera/extensions/internal/Version;

    .line 655
    invoke-static {v0}, Landroidx/camera/extensions/internal/ExtensionVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->getRealtimeCaptureLatency()Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSupportedCameraOperations()Ljava/util/Set;
    .locals 1

    .line 68
    invoke-super {p0}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->getSupportedCameraOperations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected initSessionInternal(Ljava/lang/String;Ljava/util/Map;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;
    .locals 4
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

    const-string v0, "BasicSessionProcessor"

    const-string v1, "PreviewExtenderImpl.onInit"

    .line 120
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mContext:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v3}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    const-string v1, "ImageCaptureExtenderImpl.onInit"

    .line 123
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mContext:Landroid/content/Context;

    invoke-interface {v1, p1, p2, v2}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    .line 127
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputSurfaceConfig:Landroidx/camera/core/impl/OutputSurface;

    .line 128
    iput-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mCaptureOutputSurfaceConfig:Landroidx/camera/core/impl/OutputSurface;

    .line 131
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    .line 132
    invoke-interface {p1}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->getProcessorType()Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    move-result-object p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preview processorType="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object p2, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->PROCESSOR_TYPE_IMAGE_PROCESSOR:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    const/16 v1, 0x23

    if-ne p1, p2, :cond_0

    .line 135
    sget-object p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->sLastOutputConfigId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 136
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 137
    invoke-virtual {p3}, Landroidx/camera/core/impl/OutputSurface;->getSize()Landroid/util/Size;

    move-result-object p2

    const/4 p3, 0x2

    .line 135
    invoke-static {p1, p2, v1, p3}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->create(ILandroid/util/Size;II)Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 140
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    .line 141
    invoke-interface {p1}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->getProcessor()Landroidx/camera/extensions/impl/ProcessorImpl;

    move-result-object p1

    check-cast p1, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    .line 142
    new-instance p2, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    iget-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputSurfaceConfig:Landroidx/camera/core/impl/OutputSurface;

    .line 143
    invoke-virtual {p3}, Landroidx/camera/core/impl/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object p3

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputSurfaceConfig:Landroidx/camera/core/impl/OutputSurface;

    .line 144
    invoke-virtual {v2}, Landroidx/camera/core/impl/OutputSurface;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {p2, p1, p3, v2}, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;-><init>(Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;Landroid/view/Surface;Landroid/util/Size;)V

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    goto :goto_0

    .line 145
    :cond_0
    sget-object p2, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->PROCESSOR_TYPE_REQUEST_UPDATE_ONLY:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    if-ne p1, p2, :cond_1

    .line 146
    sget-object p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->sLastOutputConfigId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroidx/camera/core/impl/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object p2

    .line 146
    invoke-static {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;->create(ILandroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 149
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    .line 150
    invoke-interface {p1}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->getProcessor()Landroidx/camera/extensions/impl/ProcessorImpl;

    move-result-object p1

    check-cast p1, Landroidx/camera/extensions/impl/RequestUpdateProcessorImpl;

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestUpdateProcessor:Landroidx/camera/extensions/impl/RequestUpdateProcessorImpl;

    goto :goto_0

    .line 152
    :cond_1
    sget-object p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->sLastOutputConfigId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 154
    invoke-virtual {p3}, Landroidx/camera/core/impl/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object p2

    .line 152
    invoke-static {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;->create(ILandroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 158
    :goto_0
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {p1}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->getCaptureProcessor()Landroidx/camera/extensions/impl/CaptureProcessorImpl;

    move-result-object p1

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CaptureProcessor="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 162
    sget-object p2, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->sLastOutputConfigId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    .line 164
    invoke-virtual {p4}, Landroidx/camera/core/impl/OutputSurface;->getSize()Landroid/util/Size;

    move-result-object p3

    iget-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    .line 166
    invoke-interface {p4}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->getMaxCaptureStage()I

    move-result p4

    .line 162
    invoke-static {p2, p3, v1, p4}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->create(ILandroid/util/Size;II)Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mCaptureOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 167
    new-instance p2, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    iget-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mCaptureOutputSurfaceConfig:Landroidx/camera/core/impl/OutputSurface;

    .line 168
    invoke-virtual {p3}, Landroidx/camera/core/impl/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object p3

    iget-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mCaptureOutputSurfaceConfig:Landroidx/camera/core/impl/OutputSurface;

    .line 169
    invoke-virtual {p4}, Landroidx/camera/core/impl/OutputSurface;->getSize()Landroid/util/Size;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4}, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;-><init>(Landroidx/camera/extensions/impl/CaptureProcessorImpl;Landroid/view/Surface;Landroid/util/Size;)V

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    goto :goto_1

    .line 171
    :cond_2
    sget-object p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->sLastOutputConfigId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 173
    invoke-virtual {p4}, Landroidx/camera/core/impl/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object p2

    .line 171
    invoke-static {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;->create(ILandroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mCaptureOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    :goto_1
    if-eqz p5, :cond_3

    .line 178
    sget-object p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->sLastOutputConfigId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 180
    invoke-virtual {p5}, Landroidx/camera/core/impl/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object p2

    .line 178
    invoke-static {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;->create(ILandroid/view/Surface;)Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 183
    :cond_3
    new-instance p1, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    invoke-direct {p1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;-><init>()V

    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 185
    invoke-virtual {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->addOutputConfig(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    move-result-object p1

    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mCaptureOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 186
    invoke-virtual {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->addOutputConfig(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 187
    invoke-virtual {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->setSessionTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    move-result-object p1

    .line 189
    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    if-eqz p2, :cond_4

    .line 190
    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-virtual {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->addOutputConfig(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    .line 193
    :cond_4
    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    invoke-interface {p2}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->onPresetSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object p2

    .line 194
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "preview onPresetSession:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {p3}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onPresetSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object p3

    .line 197
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "capture onPresetSession:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 199
    invoke-interface {p2}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getParameters()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 201
    invoke-interface {p2}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/Pair;

    .line 202
    iget-object p5, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p5, p4}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->addSessionParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 206
    invoke-interface {p3}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getParameters()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 208
    invoke-interface {p3}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 209
    iget-object p4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p4, p3}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->addSessionParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;

    goto :goto_3

    .line 212
    :cond_6
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->build()Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$startRepeating$0$BasicExtenderSessionProcessor(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;IJLjava/util/List;)V
    .locals 0

    .line 388
    invoke-virtual {p0, p5}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->getCaptureResultKeyMapFromList(Ljava/util/List;)Ljava/util/Map;

    move-result-object p5

    .line 387
    invoke-interface {p1, p3, p4, p2, p5}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureCompleted(JILjava/util/Map;)V

    return-void
.end method

.method public onCaptureSessionEnd()V
    .locals 5

    .line 337
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mOnEnableDisableSessionDurationCheck:Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->onDisableSessionInvoked()V

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->onDisableSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object v1

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview onDisableSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BasicSessionProcessor"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 342
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onDisableSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object v1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture onDisableSession:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    invoke-direct {p0, v1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->submitRequestByCaptureStages(Landroidx/camera/core/impl/RequestProcessor;Ljava/util/List;)V

    :cond_2
    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    return-void
.end method

.method public onCaptureSessionStart(Landroidx/camera/core/impl/RequestProcessor;)V
    .locals 5

    .line 253
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewExtenderImpl:Landroidx/camera/extensions/impl/PreviewExtenderImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/PreviewExtenderImpl;->onEnableSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object v1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview onEnableSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BasicSessionProcessor"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 259
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onEnableSession()Landroidx/camera/extensions/impl/CaptureStageImpl;

    move-result-object v1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture onEnableSession:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_1
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mOnEnableDisableSessionDurationCheck:Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->onEnableSessionInvoked()V

    .line 268
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    invoke-direct {p0, p1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->submitRequestByCaptureStages(Landroidx/camera/core/impl/RequestProcessor;Ljava/util/List;)V

    .line 272
    :cond_2
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    if-eqz p1, :cond_3

    .line 273
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {p1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result p1

    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$1;

    invoke-direct {v0, p0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$1;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;)V

    invoke-virtual {p0, p1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->setImageProcessor(ILandroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;)V

    :cond_3
    return-void
.end method

.method public setParameters(Landroidx/camera/core/impl/Config;)V
    .locals 5

    .line 234
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    invoke-static {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->listOptions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/Config$Option;

    .line 242
    invoke-virtual {v3}, Landroidx/camera/core/impl/Config$Option;->getToken()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 243
    invoke-virtual {p1, v3}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mParameters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 246
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mParameters:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 247
    invoke-direct {p0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->applyRotationAndJpegQualityToProcessor()V

    .line 248
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startCapture(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .locals 9

    .line 471
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mNextCaptureSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 473
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    const-string v2, "BasicSessionProcessor"

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 479
    iput-boolean v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mIsCapturing:Z

    .line 481
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mImageCaptureExtenderImpl:Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->getCaptureStages()Ljava/util/List;

    move-result-object v3

    .line 483
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/extensions/impl/CaptureStageImpl;

    .line 486
    new-instance v6, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    invoke-direct {v6}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;-><init>()V

    .line 487
    iget-object v7, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mCaptureOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {v7}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->addTargetOutputConfigIds(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    const/4 v7, 0x2

    .line 488
    invoke-virtual {v6, v7}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 489
    invoke-interface {v5}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setCaptureStageId(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 491
    invoke-interface {v5}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-direct {p0, v6}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->applyParameters(Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;)V

    .line 494
    invoke-direct {p0, v6}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->applyPreviewStagesParameters(Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;)V

    .line 497
    invoke-interface {v5}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 498
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v8, v7}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setParameters(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    goto :goto_1

    .line 500
    :cond_1
    invoke-virtual {v6}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->build()Landroidx/camera/core/impl/RequestProcessor$Request;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait for capture stage id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v3, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;

    invoke-direct {v3, p0, p1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$4;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V

    const-string v5, "startCapture"

    .line 560
    invoke-static {v2, v5}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    if-eqz v2, :cond_3

    .line 562
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mStillCaptureProcessor:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    new-instance v5, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;

    invoke-direct {v5, p0, p1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$5;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V

    invoke-virtual {v2, v4, v5}, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;->startCapture(Ljava/util/List;Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$OnCaptureResultCallback;)V

    .line 584
    :cond_3
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mCaptureOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v2

    new-instance v4, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;

    invoke-direct {v4, p0, p1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$6;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V

    invoke-virtual {p0, v2, v4}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->setImageProcessor(ILandroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;)V

    .line 604
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    invoke-interface {p1, v1, v3}, Landroidx/camera/core/impl/RequestProcessor;->submit(Ljava/util/List;Landroidx/camera/core/impl/RequestProcessor$Callback;)I

    return v0

    :cond_4
    :goto_2
    const-string v1, "startCapture failed"

    .line 474
    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureFailed(I)V

    .line 476
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceAborted(I)V

    return v0
.end method

.method public startRepeating(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .locals 3

    .line 380
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mNextCaptureSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 381
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    if-nez v1, :cond_0

    .line 382
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureFailed(I)V

    .line 383
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;->onCaptureSequenceAborted(I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    new-instance v2, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;

    invoke-direct {v2, p0, p1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V

    invoke-virtual {v1, v2}, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->start(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;)V

    .line 391
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->updateRepeating(ILandroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V

    :goto_0
    return v0
.end method

.method public startTrigger(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .locals 5

    const-string v0, "BasicSessionProcessor"

    const-string v1, "startTrigger"

    .line 615
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mNextCaptureSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 617
    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    invoke-direct {v1}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;-><init>()V

    .line 618
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->addTargetOutputConfigIds(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 619
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->addTargetOutputConfigIds(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    :cond_0
    const/4 v2, 0x1

    .line 622
    invoke-virtual {v1, v2}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 623
    invoke-direct {p0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->applyParameters(Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;)V

    .line 624
    invoke-direct {p0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->applyPreviewStagesParameters(Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;)V

    .line 627
    invoke-static {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p1

    .line 628
    invoke-virtual {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->listOptions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/Config$Option;

    .line 630
    invoke-virtual {v3}, Landroidx/camera/core/impl/Config$Option;->getToken()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 631
    invoke-virtual {p1, v3}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setParameters(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    goto :goto_0

    .line 634
    :cond_1
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->build()Landroidx/camera/core/impl/RequestProcessor$Request;

    move-result-object v1

    new-instance v2, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;

    invoke-direct {v2, p0, p2, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$7;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V

    invoke-interface {p1, v1, v2}, Landroidx/camera/core/impl/RequestProcessor;->submit(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/RequestProcessor$Callback;)I

    return v0
.end method

.method public stopRepeating()V
    .locals 1

    .line 466
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    invoke-interface {v0}, Landroidx/camera/core/impl/RequestProcessor;->stopRepeating()V

    return-void
.end method

.method updateRepeating(ILandroidx/camera/core/impl/SessionProcessor$CaptureCallback;)V
    .locals 3

    .line 398
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    const-string v1, "BasicSessionProcessor"

    if-nez v0, :cond_0

    const-string p1, "mRequestProcessor is null, ignore repeating request"

    .line 399
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_0
    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    invoke-direct {v0}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;-><init>()V

    .line 403
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->addTargetOutputConfigIds(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 404
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mAnalysisOutputConfig:Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    invoke-interface {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->addTargetOutputConfigIds(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    :cond_1
    const/4 v2, 0x1

    .line 407
    invoke-virtual {v0, v2}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->setTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;

    .line 408
    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->applyParameters(Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;)V

    .line 409
    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->applyPreviewStagesParameters(Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;)V

    .line 411
    new-instance v2, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;

    invoke-direct {v2, p0, p2, p1}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$3;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V

    const-string p1, "requestProcessor setRepeating"

    .line 450
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/sessionprocessor/RequestBuilder;->build()Landroidx/camera/core/impl/RequestProcessor$Request;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Landroidx/camera/core/impl/RequestProcessor;->setRepeating(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/RequestProcessor$Callback;)I

    return-void
.end method
