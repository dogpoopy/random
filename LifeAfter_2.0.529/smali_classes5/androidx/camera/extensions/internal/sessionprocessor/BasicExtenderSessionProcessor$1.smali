.class Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$1;
.super Ljava/lang/Object;
.source "BasicExtenderSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->onCaptureSessionStart(Landroidx/camera/core/impl/RequestProcessor;)V
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

    .line 274
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNextImageAvailable(IJLandroidx/camera/extensions/internal/sessionprocessor/ImageReference;Ljava/lang/String;)V
    .locals 0

    .line 279
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object p1, p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;

    iget-object p1, p1, Landroidx/camera/extensions/internal/sessionprocessor/BasicExtenderSessionProcessor;->mPreviewProcessor:Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;

    invoke-virtual {p1, p4}, Landroidx/camera/extensions/internal/sessionprocessor/PreviewProcessor;->notifyImage(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;)V

    :cond_0
    return-void
.end method
