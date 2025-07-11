.class Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$2;
.super Ljava/lang/Object;
.source "BasicExtenderSessionProcessor.java"

# interfaces
.implements Landroidx/camera/core/impl/RequestProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->submitRequestByCaptureStages(Landroidx/camera/core/impl/RequestProcessor;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;


# direct methods
.method constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;)V
    .locals 0

    .line 331
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$2;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Request;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;JI)V

    return-void
.end method

.method public synthetic onCaptureCompleted(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureCompleted(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V

    return-void
.end method

.method public synthetic onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    return-void
.end method

.method public synthetic onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V

    return-void
.end method

.method public synthetic onCaptureSequenceAborted(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureSequenceAborted(Landroidx/camera/core/impl/RequestProcessor$Callback;I)V

    return-void
.end method

.method public synthetic onCaptureSequenceCompleted(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureSequenceCompleted(Landroidx/camera/core/impl/RequestProcessor$Callback;IJ)V

    return-void
.end method

.method public synthetic onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/camera/core/impl/RequestProcessor$Callback$-CC;->$default$onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Callback;Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V

    return-void
.end method
