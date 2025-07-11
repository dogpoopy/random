.class Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$1;
.super Ljava/lang/Object;
.source "PreviewProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/impl/ProcessResultImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->start(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

.field final synthetic val$onResultCallback:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;


# direct methods
.method constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$1;->val$onResultCallback:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$1;->val$onResultCallback:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor$OnCaptureResultCallback;->onCaptureResult(JLjava/util/List;)V

    return-void
.end method

.method public onCaptureProcessProgressed(I)V
    .locals 0

    return-void
.end method
