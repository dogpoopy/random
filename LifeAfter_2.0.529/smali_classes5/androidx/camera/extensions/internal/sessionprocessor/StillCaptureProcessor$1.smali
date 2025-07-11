.class Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$1;
.super Ljava/lang/Object;
.source "StillCaptureProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/impl/ProcessResultImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;->startCapture(Ljava/util/List;Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$OnCaptureResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

.field final synthetic val$onCaptureResultCallback:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$OnCaptureResultCallback;


# direct methods
.method constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$OnCaptureResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor;

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$1;->val$onCaptureResultCallback:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$OnCaptureResultCallback;

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

    .line 230
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$1;->val$onCaptureResultCallback:Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$OnCaptureResultCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/extensions/internal/sessionprocessor/StillCaptureProcessor$OnCaptureResultCallback;->onCaptureResult(JLjava/util/List;)V

    return-void
.end method

.method public onCaptureProcessProgressed(I)V
    .locals 0

    return-void
.end method
