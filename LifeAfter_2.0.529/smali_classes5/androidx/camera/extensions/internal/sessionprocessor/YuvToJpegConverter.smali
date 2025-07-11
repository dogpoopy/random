.class Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;
.super Ljava/lang/Object;
.source "YuvToJpegConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter$ConversionFailedException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YuvToJpegConverter"


# instance fields
.field private volatile mJpegQuality:I

.field private final mOutputJpegSurface:Landroid/view/Surface;

.field private volatile mRotationDegrees:I


# direct methods
.method constructor <init>(ILandroid/view/Surface;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;->mRotationDegrees:I

    .line 45
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;->mJpegQuality:I

    .line 46
    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;->mOutputJpegSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method setJpegQuality(I)V
    .locals 0

    .line 54
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;->mJpegQuality:I

    return-void
.end method

.method public setRotationDegrees(I)V
    .locals 0

    .line 50
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;->mRotationDegrees:I

    return-void
.end method

.method writeYuvImage(Landroidx/camera/core/ImageProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter$ConversionFailedException;
        }
    .end annotation

    const-string v0, "Failed to process YUV -> JPEG"

    .line 70
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Input image is not expected YUV_420_888 image format"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 75
    :try_start_0
    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;->mJpegQuality:I

    iget v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;->mRotationDegrees:I

    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter;->mOutputJpegSurface:Landroid/view/Surface;

    invoke-static {p1, v1, v2, v3}, Landroidx/camera/core/ImageProcessingUtil;->convertYuvToJpegBytesIntoSurface(Landroidx/camera/core/ImageProxy;IILandroid/view/Surface;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 81
    :cond_1
    :try_start_1
    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter$ConversionFailedException;

    invoke-direct {v1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter$ConversionFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "YuvToJpegConverter"

    .line 84
    invoke-static {v2, v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v2, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter$ConversionFailedException;

    invoke-direct {v2, v0, v1}, Landroidx/camera/extensions/internal/sessionprocessor/YuvToJpegConverter$ConversionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :goto_1
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 88
    throw v0
.end method
