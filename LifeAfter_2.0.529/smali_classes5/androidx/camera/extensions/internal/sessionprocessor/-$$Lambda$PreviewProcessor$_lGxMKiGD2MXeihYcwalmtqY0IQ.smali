.class public final synthetic Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$PreviewProcessor$_lGxMKiGD2MXeihYcwalmtqY0IQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

.field public final synthetic f$1:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$PreviewProcessor$_lGxMKiGD2MXeihYcwalmtqY0IQ;->f$0:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$PreviewProcessor$_lGxMKiGD2MXeihYcwalmtqY0IQ;->f$1:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;

    return-void
.end method


# virtual methods
.method public final onImageReferenceIncoming(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$PreviewProcessor$_lGxMKiGD2MXeihYcwalmtqY0IQ;->f$0:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$PreviewProcessor$_lGxMKiGD2MXeihYcwalmtqY0IQ;->f$1:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->lambda$start$0$PreviewProcessor(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;Landroid/hardware/camera2/TotalCaptureResult;I)V

    return-void
.end method
