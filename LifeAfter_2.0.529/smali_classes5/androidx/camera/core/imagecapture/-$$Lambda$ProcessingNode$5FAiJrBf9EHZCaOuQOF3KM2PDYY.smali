.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$5FAiJrBf9EHZCaOuQOF3KM2PDYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/ProcessingRequest;

.field public final synthetic f$1:Landroidx/camera/core/ImageCapture$OutputFileResults;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$5FAiJrBf9EHZCaOuQOF3KM2PDYY;->f$0:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$5FAiJrBf9EHZCaOuQOF3KM2PDYY;->f$1:Landroidx/camera/core/ImageCapture$OutputFileResults;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$5FAiJrBf9EHZCaOuQOF3KM2PDYY;->f$0:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$5FAiJrBf9EHZCaOuQOF3KM2PDYY;->f$1:Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-static {v0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$processInputPacket$3(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method
