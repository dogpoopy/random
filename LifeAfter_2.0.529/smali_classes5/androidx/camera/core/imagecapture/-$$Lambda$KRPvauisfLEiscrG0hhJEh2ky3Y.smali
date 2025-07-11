.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$KRPvauisfLEiscrG0hhJEh2ky3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/CaptureNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/CaptureNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$KRPvauisfLEiscrG0hhJEh2ky3Y;->f$0:Landroidx/camera/core/imagecapture/CaptureNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$KRPvauisfLEiscrG0hhJEh2ky3Y;->f$0:Landroidx/camera/core/imagecapture/CaptureNode;

    check-cast p1, Landroidx/camera/core/ImageCaptureException;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->sendCaptureError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method
