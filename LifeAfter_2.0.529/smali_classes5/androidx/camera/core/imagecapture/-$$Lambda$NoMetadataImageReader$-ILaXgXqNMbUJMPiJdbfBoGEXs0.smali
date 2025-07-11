.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$NoMetadataImageReader$-ILaXgXqNMbUJMPiJdbfBoGEXs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/NoMetadataImageReader;

.field public final synthetic f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/NoMetadataImageReader;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$NoMetadataImageReader$-ILaXgXqNMbUJMPiJdbfBoGEXs0;->f$0:Landroidx/camera/core/imagecapture/NoMetadataImageReader;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/-$$Lambda$NoMetadataImageReader$-ILaXgXqNMbUJMPiJdbfBoGEXs0;->f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$NoMetadataImageReader$-ILaXgXqNMbUJMPiJdbfBoGEXs0;->f$0:Landroidx/camera/core/imagecapture/NoMetadataImageReader;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$NoMetadataImageReader$-ILaXgXqNMbUJMPiJdbfBoGEXs0;->f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->lambda$setOnImageAvailableListener$0$NoMetadataImageReader(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
