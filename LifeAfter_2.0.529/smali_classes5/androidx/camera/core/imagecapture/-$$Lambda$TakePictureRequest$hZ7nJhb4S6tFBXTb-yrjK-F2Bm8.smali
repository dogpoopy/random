.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$TakePictureRequest$hZ7nJhb4S6tFBXTb-yrjK-F2Bm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/TakePictureRequest;

.field public final synthetic f$1:Landroidx/camera/core/ImageCapture$OutputFileResults;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$TakePictureRequest$hZ7nJhb4S6tFBXTb-yrjK-F2Bm8;->f$0:Landroidx/camera/core/imagecapture/TakePictureRequest;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/-$$Lambda$TakePictureRequest$hZ7nJhb4S6tFBXTb-yrjK-F2Bm8;->f$1:Landroidx/camera/core/ImageCapture$OutputFileResults;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$TakePictureRequest$hZ7nJhb4S6tFBXTb-yrjK-F2Bm8;->f$0:Landroidx/camera/core/imagecapture/TakePictureRequest;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$TakePictureRequest$hZ7nJhb4S6tFBXTb-yrjK-F2Bm8;->f$1:Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-virtual {v0, v1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->lambda$onResult$1$TakePictureRequest(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method
