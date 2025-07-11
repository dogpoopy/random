.class Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;
.super Ljava/lang/Object;
.source "PreviewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewProcessor"


# instance fields
.field final mCaptureResultImageMatcher:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;

.field mIsClosed:Z

.field final mLock:Ljava/lang/Object;

.field final mPreviewImageProcessor:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;


# direct methods
.method constructor <init>(Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;Landroid/view/Surface;Landroid/util/Size;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;

    invoke-direct {v0}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mCaptureResultImageMatcher:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mIsClosed:Z

    .line 64
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mPreviewImageProcessor:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    .line 65
    invoke-interface {p1, p3}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->onResolutionUpdate(Landroid/util/Size;)V

    const/4 p3, 0x1

    .line 66
    invoke-interface {p1, p2, p3}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    const/16 p2, 0x23

    .line 67
    invoke-interface {p1, p2}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->onImageFormatUpdate(I)V

    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 124
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 125
    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mIsClosed:Z

    .line 126
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mCaptureResultImageMatcher:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->clear()V

    .line 127
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mCaptureResultImageMatcher:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->clearImageReferenceListener()V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$start$0$PreviewProcessor(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 3

    .line 78
    iget-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 79
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->decrement()Z

    const-string p1, "PreviewProcessor"

    const-string p2, "Ignore image in closed state"

    .line 81
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    monitor-exit p4

    return-void

    .line 84
    :cond_0
    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_3:Landroidx/camera/extensions/internal/Version;

    invoke-static {v0}, Landroidx/camera/extensions/internal/ClientVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_3:Landroidx/camera/extensions/internal/Version;

    .line 86
    invoke-static {v0}, Landroidx/camera/extensions/internal/ExtensionVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mPreviewImageProcessor:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->get()Landroid/media/Image;

    move-result-object v1

    new-instance v2, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$1;

    invoke-direct {v2, p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$1;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;)V

    .line 101
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 87
    invoke-interface {v0, v1, p3, v2, p1}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->process(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Landroidx/camera/extensions/impl/ProcessResultImpl;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mPreviewImageProcessor:Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;

    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->get()Landroid/media/Image;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Landroidx/camera/extensions/impl/PreviewImageProcessorImpl;->process(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 106
    :goto_0
    invoke-interface {p2}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->decrement()Z

    .line 107
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method notifyCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mCaptureResultImageMatcher:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;

    invoke-virtual {v0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->captureResultIncoming(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method notifyImage(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;)V
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mCaptureResultImageMatcher:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;

    invoke-virtual {v0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->imageIncoming(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;)V

    return-void
.end method

.method start(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;)V
    .locals 2

    .line 76
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->mCaptureResultImageMatcher:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$PreviewProcessor$_lGxMKiGD2MXeihYcwalmtqY0IQ;

    invoke-direct {v1, p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$PreviewProcessor$_lGxMKiGD2MXeihYcwalmtqY0IQ;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;)V

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->setImageReferenceListener(Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;)V

    return-void
.end method
