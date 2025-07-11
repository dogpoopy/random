.class public final synthetic Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;


# instance fields
.field public final synthetic f$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

.field public final synthetic f$1:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;->f$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;->f$1:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iput p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;->f$2:I

    return-void
.end method


# virtual methods
.method public final onCaptureResult(JLjava/util/List;)V
    .locals 6

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;->f$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;->f$1:Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;

    iget v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$BasicExtenderSessionProcessor$4-BF1yipPFozIRfHcJ5JfSfRQMA;->f$2:I

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->lambda$startRepeating$0$BasicExtenderSessionProcessor(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;IJLjava/util/List;)V

    return-void
.end method
