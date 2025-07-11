.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$CaptureNode$CZUNbuXuXmg5gQMpFDQ5B4U1nD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/CaptureNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/CaptureNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$CaptureNode$CZUNbuXuXmg5gQMpFDQ5B4U1nD8;->f$0:Landroidx/camera/core/imagecapture/CaptureNode;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$CaptureNode$CZUNbuXuXmg5gQMpFDQ5B4U1nD8;->f$0:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->lambda$transform$1$CaptureNode(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
