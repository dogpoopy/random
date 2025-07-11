.class abstract Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;
.super Ljava/lang/Object;
.source "SessionProcessorBase.java"

# interfaces
.implements Landroidx/camera/core/impl/SessionProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase$ImageRefHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionProcessorBase"


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mImageReaderHandlerThread:Landroid/os/HandlerThread;

.field private mImageReaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOutputConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedCameraOperations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfacesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mOutputConfigMap:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    .line 80
    invoke-direct {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->getSupportedCameraOperations(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSupportedCameraOperations:Ljava/util/Set;

    return-void
.end method

.method private static createOutputConfigSurface(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;Ljava/util/Map;)Landroidx/camera/core/impl/SessionProcessorSurface;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageReader;",
            ">;)",
            "Landroidx/camera/core/impl/SessionProcessorSurface;"
        }
    .end annotation

    .line 139
    instance-of v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    if-eqz v0, :cond_0

    .line 140
    move-object p1, p0

    check-cast p1, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;

    .line 141
    new-instance v0, Landroidx/camera/core/impl/SessionProcessorSurface;

    .line 142
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/SurfaceOutputConfig;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 143
    invoke-interface {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result p0

    invoke-direct {v0, p1, p0}, Landroidx/camera/core/impl/SessionProcessorSurface;-><init>(Landroid/view/Surface;I)V

    return-object v0

    .line 145
    :cond_0
    instance-of v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    if-eqz v0, :cond_1

    .line 146
    move-object v0, p0

    check-cast v0, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    .line 150
    invoke-virtual {v0}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 151
    invoke-virtual {v0}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 152
    invoke-virtual {v0}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getImageFormat()I

    move-result v3

    .line 153
    invoke-virtual {v0}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getMaxImages()I

    move-result v0

    .line 150
    invoke-static {v1, v2, v3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 154
    invoke-interface {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance p1, Landroidx/camera/core/impl/SessionProcessorSurface;

    .line 156
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 157
    invoke-interface {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result p0

    invoke-direct {p1, v1, p0}, Landroidx/camera/core/impl/SessionProcessorSurface;-><init>(Landroid/view/Surface;I)V

    .line 158
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionProcessorSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$v7tq6J2zR0LWcNAv9cIbSaQ-4-g;

    invoke-direct {v1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$v7tq6J2zR0LWcNAv9cIbSaQ-4-g;-><init>(Landroid/media/ImageReader;)V

    .line 160
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 158
    invoke-interface {p0, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1

    .line 162
    :cond_1
    instance-of p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;

    if-eqz p1, :cond_2

    .line 163
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MultiResolutionImageReader not supported yet"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Camera2OutputConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSupportedCameraOperations(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_1

    .line 88
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v1, 0x2

    new-array v3, v1, [Landroid/hardware/camera2/CaptureRequest$Key;

    .line 98
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v3, v2

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 99
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 98
    invoke-interface {p1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_5
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    new-array v3, v1, [Landroid/hardware/camera2/CaptureRequest$Key;

    .line 116
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v3, v2

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v3, v5

    .line 117
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 116
    invoke-interface {p1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    new-array v1, v1, [Landroid/hardware/camera2/CaptureRequest$Key;

    .line 123
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v3, v1, v2

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v5

    .line 124
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-interface {p1, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x7

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method

.method static synthetic lambda$createOutputConfigSurface$0(Landroid/media/ImageReader;)V
    .locals 0

    .line 159
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    return-void
.end method

.method static synthetic lambda$setImageProcessor$1(Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;ILjava/lang/String;Landroid/media/ImageReader;)V
    .locals 6

    .line 261
    :try_start_0
    invoke-virtual {p3}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p3

    .line 262
    new-instance v4, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase$ImageRefHolder;

    invoke-direct {v4, p3}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase$ImageRefHolder;-><init>(Landroid/media/Image;)V

    .line 263
    invoke-virtual {p3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;->onNextImageAvailable(IJLandroidx/camera/extensions/internal/sessionprocessor/ImageReference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SessionProcessorBase"

    const-string p2, "Failed to acquire next image."

    .line 266
    invoke-static {p1, p2, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final deInitSession()V
    .locals 3

    const-string v0, "SessionProcessorBase"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deInitSession: cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->deInitSessionInternal()V

    .line 278
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/DeferrableSurface;

    .line 280
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 283
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 284
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mOutputConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 285
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract deInitSessionInternal()V
.end method

.method public synthetic getRealtimeCaptureLatency()Landroid/util/Pair;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/SessionProcessor$-CC;->$default$getRealtimeCaptureLatency(Landroidx/camera/core/impl/SessionProcessor;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCameraOperations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSupportedCameraOperations:Ljava/util/Set;

    return-object v0
.end method

.method public final initSession(Landroidx/camera/core/CameraInfo;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/core/impl/SessionConfig;
    .locals 7

    .line 175
    invoke-static {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraCharacteristicsMap()Ljava/util/Map;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 178
    invoke-virtual/range {v0 .. v5}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->initSessionInternal(Ljava/lang/String;Ljava/util/Map;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;

    move-result-object p2

    .line 186
    new-instance p3, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {p3}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    .line 187
    iget-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 188
    :try_start_0
    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;->getOutputConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 189
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    .line 190
    invoke-static {v1, v2}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->createOutputConfigSurface(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;Ljava/util/Map;)Landroidx/camera/core/impl/SessionProcessorSurface;

    move-result-object v2

    .line 191
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mSurfacesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mOutputConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {v2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->builder(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object v2

    .line 196
    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->setPhysicalCameraId(Ljava/lang/String;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object v2

    .line 197
    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getSurfaceGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->setSurfaceGroupId(I)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object v2

    .line 200
    invoke-interface {v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getSurfaceSharingOutputConfigs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    .line 204
    iget-object v5, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mOutputConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v5, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    invoke-static {v4, v5}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->createOutputConfigSurface(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;Ljava/util/Map;)Landroidx/camera/core/impl/SessionProcessorSurface;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->setSharedSurfaces(Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    .line 210
    :cond_1
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addOutputConfig(Landroidx/camera/core/impl/SessionConfig$OutputConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    goto :goto_0

    .line 212
    :cond_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    new-instance p4, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {p4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 215
    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;->getSessionParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 218
    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;->getSessionParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 219
    invoke-virtual {p4, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    goto :goto_2

    .line 221
    :cond_3
    invoke-virtual {p4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/camera/core/impl/SessionConfig$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 222
    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;->getSessionTemplateId()I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 224
    new-instance p2, Landroid/os/HandlerThread;

    const-string p4, "CameraX-extensions_image_reader"

    invoke-direct {p2, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    .line 226
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 228
    invoke-virtual {p1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mCameraId:Ljava/lang/String;

    const-string p1, "SessionProcessorBase"

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "initSession: cameraId="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 212
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract initSessionInternal(Ljava/lang/String;Ljava/util/Map;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;
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
.end method

.method protected setImageProcessor(ILandroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;)V
    .locals 4

    .line 252
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 254
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mOutputConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 255
    :cond_0
    invoke-interface {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    .line 256
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 259
    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;

    invoke-direct {v0, p2, p1, v2}, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;ILjava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    .line 268
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 259
    invoke-virtual {v1, v0, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 256
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic startTrigger(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/SessionProcessor$-CC;->$default$startTrigger(Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I

    move-result p1

    return p1
.end method
